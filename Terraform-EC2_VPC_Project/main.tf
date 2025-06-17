provider "aws" {
    region = var.aws_region  
}

# Modules calls - ec2 instance

module "EC2_Instance" {
   source = "./modules/ec2"
   ami = var.ami
   instance_type = var.instance_type
   subnet_id = module.VPC.subnet_id
   #sg_id = module.SG.sg_id
   name = var.name
   }

# Modules calls - VPC 

module "VPC" {
    
    source = "./modules/vpc"
    cidr_block_VPC     = var.cidr_block_VPC
    cidr_block_subnet  = var.cidr_block_subnet
    subnet_name        = var.subnet_name
    subnet_AZone       = var.subnet_AZone
    route_table_name   = var.route_table_name
    vpc_name           = var.vpc_name
    IGW_name           = var.IGW_name
  
}

# Modules calls - Security Group

module "SG" {
  source = "./modules/security_group"
  vpc_id = module.VPC.vpc_id
  my_SG_name = var.my_SG_name
  
}

# Modules calls - S3 bucket and DynamoDB table for Terraform state management

module "S3" {
 source = "./modules/S3"
  #bucket_name = var.bucket_name
  #dynamodb_table_name = var.dynamodb_table_name
  #region = var.aws_region
}