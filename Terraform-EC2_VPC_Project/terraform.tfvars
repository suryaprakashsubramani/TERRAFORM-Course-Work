#Provider Variables
aws_region = "us-east-1"

# EC2 Instance Variables
ami = "ami-0953476d60561c955"  
instance_type = "t2.micro"
name = "Terraform-EC2-Instance"

# VPC Variables
vpc_name = "Terraform-VPC"
cidr_block_VPC = "10.0.0.0/16"
subnet_name = "Terraform-Public-Subnet"
cidr_block_subnet = "10.0.0.0/24"
subnet_AZone = "us-east-1a"
IGW_name = "Terraform-IGW"
route_table_name = "Terraform-Route-Table"


# Security Group Variables
my_SG_name = "Terraform-SG"


