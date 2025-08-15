## Terraform Configuration for AWS Provider
# This file configures the AWS provider for Terraform and sets up the backend for state management.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = "1.12.2"
}

provider "aws" {
  region  = "us-east-1"
  profile = "test"
}

terraform {
  backend "local" {
    path = "terraform/terraform.tfstate"
  }
}
