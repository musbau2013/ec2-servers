variable "region" {
  description = "AWS region to create resources"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "The EC2 instance type"
  type        = string
  default     = "t2.small"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
  default = "ami-0866a3c8686eaeeba"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default = "keypair_new"
}

# variable "vpc_id" {
#   description = "The VPC ID where the security group will be created"
#   type        = string
# }
