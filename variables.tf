variable "tfc_org_name" {
  type    = string
  default = ""
}

variable "gcp_org_id" {
  type    = string
  default = ""
}

variable "tfc_hostname" {
  type    = string
  default = "app.terraform.io"
}

variable "gcp_wi_project" {
  type        = string
  default     = ""
  description = "Project for workload identity"
}

variable "tfc_project_name" {
  type        = string
  default     = ""
  description = "The project under which a workspace will be created"
}

variable "tfc_service_account" {
  type    = string
  default = ""
}

variable "tfc_wi_pool" {
  type    = string
  default = ""
}

variable "tfc_workspace_name" {
  type    = string
  default = ""
}

variable "workload_identity_pool_provider_id" {
  type    = string
  default = ""
}

variable "github_repository" {
  type    = string
  default = ""
}

variable "token" {
  type    = string
  default = ""
}

variable "api_url" {
  type    = string
  default = "https://api.github.com"
}

variable "http_url" {
  type    = string
  default = "https://github.com"
}

variable "service_provider" {
  type    = string
  default = "github"
}

variable "gh_oauth_client_name" {
  type    = string
  default = ""
}
