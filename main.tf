module "acme-bootstraping" {
  source = "./modules/acme-bootstrap"

  gcp_wi_project                     = "nlosg-acme-wi-prj"
  tfc_org_name                       = "nlosg-utokan"
  tfc_project_name                   = "acme-banking"
  tfc_service_account                = "tfc-sa-acme-test"
  tfc_wi_pool                        = "wi-pool-acme"
  tfc_workspace_name                 = "nlosg-acme-banking-test"
  workload_identity_pool_provider_id = "wi-provider-acme-test"
  github_repository                  = "nlosg-acme-banking-test"
  token                              = var.token
  gcp_org_id                         = "519726315968"
  gh_oauth_client_name               = "tfc_github_oauth_client"
}
