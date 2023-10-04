terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "tfe" {
  hostname = var.tfc_hostname
}

provider "google" {
  region = "global"
}

provider "github" {
  token = var.token
}
