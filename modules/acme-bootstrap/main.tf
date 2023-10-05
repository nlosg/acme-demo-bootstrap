resource "google_project_service" "services" {
  for_each = toset(var.gcp_service_list)
  service  = each.value
  project  = var.gcp_wi_project
  disable_dependent_services = true
  
  depends_on = [
    google_project.wi_project
  ]
}


