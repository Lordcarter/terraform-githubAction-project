terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.10.0"
    }
  }
  backend "s3" {
    bucket = "lordcarterstatefile2025"
    key    = "dev/terraform.tfstate"
    region = "ca-central-1"
  }
}


provider "aws" {
  # Configuration options
  region = "ca-central-1"
  profile = "default"
}



