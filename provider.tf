terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  backend "s3" {
    bucket = "sainathdevops-state"
    key    = "sandbox"
    region = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}