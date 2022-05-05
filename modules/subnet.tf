resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.Onbase_VPC.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone
  
  tags = {
    Name = "${var.environment}_public_subnet"
    type = "public"
  }
}

