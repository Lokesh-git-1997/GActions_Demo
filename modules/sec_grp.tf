resource "aws_security_group" "Onbase_sec" {
  name        = "Onbase_sec"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.Onbase_VPC.id

  ingress = [{
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = null
    prefix_list_ids  = null
    self             = null
    security_groups  = null
    },
    {
      type             = "RDP"
      from_port        = 0
      to_port          = 3389
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "RDP"
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      self             = null
      security_groups  = null

    },
    {
      type             = "HTTP"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "HTTP"
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      self             = null
      security_groups  = null

    },
    {
      type             = "HTTPS"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "HTTPS"
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      self             = null
      security_groups  = null

    },
    {
      type             = "Custom TCP"
      from_port        = 8080
      to_port          = 8080
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Custom TCP"
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      self             = null
      security_groups  = null

    },
    {
      rule             = "WinRM-HTTPS"
      from_port        = 5985
      to_port          = 5986
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "WInRM-HTTPS"
      ipv6_cidr_blocks = null
      prefix_list_ids  = null
      self             = null
      security_groups  = null
    }
  ]

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }


  tags = {
    Name = "${var.environment}_sec_grp"
  }
}