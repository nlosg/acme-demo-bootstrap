module "nlosg-banking-ops" {
  source = "./modules/acme-bootstrap"

  tfc_org_name                       = "nlosg-utokan" # TFC orginisation
  tfc_project_name                   = "nlosg-ops" # TFC projects are like folders for TFC workspaces
  tfc_service_account                = "tfc-sa-nlosg-ops" # TFC SA that will provision WI
  tfc_wi_pool                        = "nlosg-wi-pool-ops" # Workload Identity Pool in GCP
  tfc_workspace_name                 = "nlosg-ops-dev" # Name of Terraform Cloud workspace
  gh_oauth_client_name               = "tfc_github_oauth_client" # OAuth Client
  github_repository                  = "nlosg-banking-dev" # Name of Github repo 
  token                              = var.token
  gcp_org_id                         = "519726315968" 
  gcp_wi_project                     = "nlosg-wi-dev"
  workload_identity_pool_provider_id = "wi-provider-acme-dev"
}


