# Root main.tf - Orchestrates the deployment of all the modules

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

# MODULES

# networking module
module "network" {
  source      = "./modules/network"
  aws_region  = var.aws_region
  environment = var.environment
}
