variable "aws_region" {
  description = "the aws region to create resources in"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "the aws profile to use"
  default     = "default"
}

variable "environment" {
  description = "the environment to create resources in"
  default     = "dev"
}

