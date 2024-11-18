terraform {
  backend "s3" {
    bucket = "integratedsolutions-123456"
    key = "state-capture/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Portfolio   = "ICX"
      Program     = "PEP"
      Environment = var.env == "dev" ? "dev" : "${var.env-qa}"
      Cost-Center = "80U677"
      Stakeholder = "Fred Yarur"
      PM          = "Tom T Frantz"
    }
  }
}
