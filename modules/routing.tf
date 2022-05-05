############## Internet Gateway ###################
resource "aws_internet_gateway" "Onbase_igw" {
  vpc_id = aws_vpc.Onbase_VPC.id
  tags = {
    Name = "${var.environment}_igw"
  }
}


############## Public Route Table ###################
resource "aws_route_table" "public_routetable" {
  vpc_id = aws_vpc.Onbase_VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Onbase_igw.id
  }

  tags = {
    Name = "${var.environment}_public_routetable"
  }
}

############## association of Public Route Table with Public Subnet ###################
resource "aws_route_table_association" "public_rt_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_routetable.id
}



