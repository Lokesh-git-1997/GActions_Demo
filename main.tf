provider "aws" {
  region = "ap-south-1"
}

module "onbase_root" {
  source                   = "./modules"
  vpc_cidr_block           = var.vpc_cidr_block
  public_subnet_cidr_block = var.public_subnet_cidr_block
  availability_zone        = var.availability_zone
  bastion_ami              = var.bastion_ami
  inst_type                = var.inst_type
  key_name                 = var.key_name
  environment              = var.environment
}





