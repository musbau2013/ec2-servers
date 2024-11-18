variable "region" {
  description = "AWS region to create resources"
  type        = string
  default     = "us-east-1"
}

variable "env" {
  description = "dev environment"
  type        = string
  default = "dev"
}

variable "env-qa" {
  description = "qa environment"
  type        = string
  default = "qa"
}