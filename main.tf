module "acme-bootstrap" {

  source = "./modules/acme-bootstrap"

  gcp_wi_project                     = var.gcp_wi_project
  tfc_project_name                   = var.tfc_project_name
  tfc_service_account                = var.tfc_service_account
  tfc_wi_pool                        = var.tfc_wi_pool
  tfc_workspace_name                 = var.tfc_workspace_name
  workload_identity_pool_provider_id = var.workload_identity_pool_provider_id
  github_repository                  = var.github_repository
  token                              = var.token
}