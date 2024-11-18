variable "region" {
  description = "AWS region to create resources"
  type        = string
  default     = "us-east-1"
}

variable "env" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "env-qa" {
  description = "The VPC ID where the security group will be created"
  type        = string
  default = "qa"
}