module "acme-bootstraping" {
  source = "./modules/acme-bootstrap"

  gcp_wi_project                     = "nlosg-acme-wi-prj-banking-prd"
  tfc_org_name                       = "nlosg-utokan"
  tfc_project_name                   = "acme-banking"
  tfc_service_account                = "tfc-sa-acme-prd"
  tfc_wi_pool                        = "wi-pool-acme-prd"
  tfc_workspace_name                 = "nlosg-acme-banking-prd"
  workload_identity_pool_provider_id = "wi-provider-acme-prd"
  github_repository                  = "nlosg-acme-banking-prd"
  token                              = var.token
  gcp_org_id                         = "519726315968"
}