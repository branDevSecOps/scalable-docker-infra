variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-2"
}

variable "key_name" {
  description = "Name of the AWS key pair to use for SSH access"
  type        = string
}
