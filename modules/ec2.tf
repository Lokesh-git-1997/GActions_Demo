resource "aws_instance" "bastion_host" {
     ami = var.bastion_ami
     instance_type = var.inst_type
     subnet_id = aws_subnet.public_subnet.id
     vpc_security_group_ids = ["${aws_security_group.Onbase_sec.id}"]
     key_name = var.key_name
    
     tags = { 
       Name = "${var.environment}_bastion_host"
     }
   }