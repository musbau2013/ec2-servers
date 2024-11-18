terraform {
  required_version = ">= 1.8.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "integratedsolutions-123456"
    key = "state-capture/terraform.tfstate"
    region = "us-east-1"
  }
}


provider "aws" {
  region = var.region
}
