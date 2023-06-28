terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.5.0"
    }
  }
  backend "s3" {
    bucket = "terraform-assi"
    key    = "states/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  # Configuration options
}
