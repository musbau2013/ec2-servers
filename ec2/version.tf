terraform {
  required_version = ">= 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "integratedsolutions-123456"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = var.region
}
