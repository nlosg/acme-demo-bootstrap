resource "tfe_project" "tfc_prj_acme_infra" {
  organization = var.tfc_org_name
  name = var.tfc_project_name
}

resource "tfe_workspace" "tfc_prd_workspace" {
  name         = var.tfc_prd_workspace_name
  organization = var.tfc_org_name
  project_id   = tfe_project.tfc_prj_acme_infra.id
}

resource "tfe_variable" "enable_gcp_provider_auth" {
  workspace_id = tfe_workspace.tfc_prd_workspace.id

  key      = "TFC_GCP_PROVIDER_AUTH"
  value    = "true"
  category = "env"

  description = "Enable the Workload Identity integration for GCP."
}

resource "tfe_variable" "tfc_gcp_workload_provider_name" {
  workspace_id = tfe_workspace.tfc_prd_workspace.id

  key      = "TFC_GCP_WORKLOAD_PROVIDER_NAME"
  value    = google_iam_workload_identity_pool_provider.tfc_prd_provider.name
  category = "env"

  description = "The workload provider name to authenticate against."
}

resource "tfe_variable" "tfc_gcp_service_account_email" {
  workspace_id = tfe_workspace.tfc_prd_workspace.id

  key      = "TFC_GCP_RUN_SERVICE_ACCOUNT_EMAIL"
  value    = google_service_account.prd_tfc_service_account.email
  category = "env"

  description = "The GCP service account email runs will use to authenticate."
}
