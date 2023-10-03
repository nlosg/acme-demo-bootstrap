variable "tfc_hostname" {
  type        = string
  default     = "app.terraform.io"
}

variable "tfc_org_name" {
  type        = string
  description = "The name of your Terraform Cloud organization"
}

variable "tfc_project_name" {
  type        = string
  default     = "acme-infra"
  description = "The project under which a workspace will be created"
}

variable "tfc_prd_workspace_name" {
  type        = string
  default     = "acme-infra-prod"
}

variable "gcp_project_id" {
  type        = string
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
