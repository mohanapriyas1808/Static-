# Terraform
terraform {
  required_version = "1.8.5"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.40.0"
    }
  }
}

#Provider
provider "aws" {
  profile = "default"
  region = "us-east-1"
}
