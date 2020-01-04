terraform {
  required_version = "~> 0.12.0"
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "jlosito"
    workspaces {
      name = "github-organization-losito-esteves"
    }
  }
}

variable "github_token" {}

provider "github" {
  token = var.github_token
  organization = "losito-esteves"
}

resource "github_repository" "membership" {
  name = "membership"
  description = "Membership of losito-esteves organization"
  has_issues = true
}
