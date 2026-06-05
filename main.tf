terraform {
  required_version = ">=1.7.0"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "student_doc" {
  filename = "${path.module}/hello_terraform.txt"
  content  = "Welcome to Terraform! You successfully built this file locally on Windows."
}