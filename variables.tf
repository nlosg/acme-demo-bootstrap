variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
}

variable "gcp_wi_project" {
  type        = string
  description = "Project for workload identity"
}

variable "tfc_project_name" {
  type        = string
  description = "The project under which a workspace will be created"
}

variable "tfc_service_account" {
  type = string
}

variable "tfc_wi_pool" {
  type = string
}

variable "tfc_workspace_name" {
  type = string
}

variable "workload_identity_pool_provider_id" {
  type = string
}

variable "github_repository" {
  type = string
}

variable "token" {
  type = string
}