module "acme-bootstraping" {
  source = "./modules/acme-bootstrap"

  gcp_wi_project                     = "nlosg-acme-wi-prj-banking-stg"
  tfc_project_name                   = "acme-banking"
  tfc_service_account                = "tfc-sa-acme-stg"
  tfc_wi_pool                        = "wi-pool-acme-stg"
  tfc_workspace_name                 = "nlosg-acme-banking-stg"
  workload_identity_pool_provider_id = "wi-provider-acme-stg"
  github_repository                  = "nlosg-acme-banking-stg"
  token                              = var.token
  gcp_org_id                         = "519726315968"
}