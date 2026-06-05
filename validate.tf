terraform {
  required_version = ">= 1.7.0"

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "example.txt"
  content  = "Hello Terraform"
}