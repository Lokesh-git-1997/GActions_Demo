
resource "aws_vpc" "Onbase_VPC" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name = "${var.environment}_VPC"
  }
}