# main.tf

# terraform provider and required providers block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

# aws provider block
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
