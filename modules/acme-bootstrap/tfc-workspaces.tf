# Connecting TF workspace with Github

resource "tfe_oauth_client" "gh_auth" {
  name             = var.gh_oauth_client_name
  organization     = var.tfc_org_name
  api_url          = var.api_url
  http_url         = var.http_url
  oauth_token      = var.token
  service_provider = var.service_provider
}

resource "github_repository" "github_repository" {
  name        = var.github_repository
  description = ""
  auto_init = true

  visibility = "public"
}

resource "github_branch" "main" {
  repository = github_repository.github_repository.name
  branch     = var.branch
}

resource "github_branch_default" "default"{
  repository = github_repository.github_repository.name
  branch     = github_branch.main.branch
}

resource "tfe_project" "tfc_project" {
  organization = var.tfc_org_name
  name         = var.tfc_project_name
}

resource "tfe_workspace" "tfc_workspace" {
  name         = var.tfc_workspace_name
  organization = var.tfc_org_name
  project_id   = tfe_project.tfc_project.id

  vcs_repo {
    identifier     = github_repository.github_repository.full_name
    oauth_token_id = tfe_oauth_client.gh_auth.oauth_token_id
    branch         = var.branch
  }

  depends_on = [
    tfe_project.tfc_project,
    tfe_oauth_client.gh_auth
  ]
}

resource "tfe_variable" "enable_gcp_provider_auth" {
  workspace_id = tfe_workspace.tfc_workspace.id

  key      = "TFC_GCP_PROVIDER_AUTH"
  value    = "true"
  category = "env"

  description = "Enable the Workload Identity integration for GCP."
}

resource "tfe_variable" "tfc_gcp_workload_provider_name" {
  workspace_id = tfe_workspace.tfc_workspace.id

  key      = "TFC_GCP_WORKLOAD_PROVIDER_NAME"
  value    = google_iam_workload_identity_pool_provider.tfc_provider.name
  category = "env"

  description = "The workload provider name to authenticate against."
}

resource "tfe_variable" "tfc_gcp_service_account_email" {
  workspace_id = tfe_workspace.tfc_workspace.id

  key      = "TFC_GCP_RUN_SERVICE_ACCOUNT_EMAIL"
  value    = google_service_account.tfc_service_account.email
  category = "env"

  description = "The GCP service account email runs will use to authenticate."
}