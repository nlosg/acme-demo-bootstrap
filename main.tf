resource "google_project_service" "services" {
  count   = length(var.gcp_service_list)
  service = var.gcp_service_list[count.index]
}


