module "ec2-dev" {
    source = "./ec2"
    env = "dev"

}

module "ec2-dev" {
  source = "./ec2"
  env = var.env-qa
  
}