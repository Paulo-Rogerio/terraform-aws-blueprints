# ------------------------------------------------------------------------------
# ENVIRONMENT
# ------------------------------------------------------------------------------

variable "environment" {
  description = "The environment name"
  type        = string
}

variable "aws_region" {
  description = "AWS region in which resources will be provisioned"
  type        = string
}

variable "tags" {
  description = "Key-value mapping of resource tags"
  type        = map(string)
}

# ------------------------------------------------------------------------------
# VPC
# ------------------------------------------------------------------------------

variable "cidr" {
  description = "The CIDR block of the VPC. It **must** use the `10.XXX.0.0/16` format"
  type        = string

  validation {
    condition     = can(regex("^10\\.[0-9]+\\.0\\.0/16$", var.cidr))
    error_message = "The VPC CIDR must use the '10.XXX.0.0/16' format."
  }
}

