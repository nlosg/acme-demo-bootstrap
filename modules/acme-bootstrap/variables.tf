variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
}

variable "tfc_org_name" {
  type        = string
  default     = "nlosg-utokan"
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  description = "The project under which a workspace will be created"
}

variable "tfc_workspace_name" {
  type        = string
}

variable "tfc_service_account" {
  type = string
}

variable "gcp_org_id" {
  type    = string
}

variable "tfc_wi_pool" {
  type = string
}

variable "workload_identity_pool_provider_id" {
  type = string
}

variable "gcp_service_list" {
  description = "APIs required for the project"
  type        = list(string)
  default = [
    "iam.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "sts.googleapis.com",
    "iamcredentials.googleapis.com"
  ]
}

variable "gcp_wi_project" {
  type        = string
  description = "Project for workload identity"
}


variable "github_repository" {
  type = string
}

variable "token" {
  type = string
}

variable "branch" {
  type    = string
  default = "main"
}

variable "api_url" {
  type = string
  default = "https://api.github.com"
}

variable "http_url" {
  type = string
  default = "https://github.com"
}

variable "service_provider" {
  type = string
  default = "github"
}

variable "gh_oauth_client_name" {
  type = string
}
