provider "tfe" {
  hostname = var.tfc_hostname
}

provider "google" {
  project = var.gcp_project_id
  region  = "europe-west2"
}

data "google_project" "project" {
}
