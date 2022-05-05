
variable "vpc_cidr_block" {
  description = "VPC CIDR block."
  type        = string
}

variable "availability_zone" {
  description = "AZ"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block of public subnet"
  type        = string
}

variable "bastion_ami" {
  type = string
}

variable "inst_type" {
  type = string
}

variable "key_name" {
  type = string
}

variable "environment" {
  description = "environment to create base infrastructure"
  type        = string
}



