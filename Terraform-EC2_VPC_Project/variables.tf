# Provider block varibales
# Varibale definitions for AWS Region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

# EC2 Instance module variables
# Define the variables for the AMI-id
variable "ami" {
    description = "AMI to be used for the EC2 instance"
    type = string
}
# Define the variables for the Instance type
variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type = string
}
# Define the variables for the Project name
variable "name" {
    description = "Name tag for the EC2 instance"
    type = string   
}

# VPC module variables
# Variables for VPC configuration - VPC name
variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
}
# VPC configuration variables - VPC CIDR block
variable "cidr_block_VPC" {
    description = "CIDR block for the VPC"
    type        = string
}
# Variables for Subnet configuration - Subnet name
variable "subnet_name" {
    description = "Name for the public subnet - Public Subnet helps instance in subnet to access the internet"
    type        = string
}
# Variables for Subnet configuration - Subnet CIDR block
variable "cidr_block_subnet" {
    description = "CIDR block for the public subnet"
    type        = string
}
# Variables for Subnet configuration - Subnet AZone
variable "subnet_AZone" {
    description = "Availability Zone for the public subnet"
    type        = string
}
# Variables for Internet Gateway configuration
variable "IGW_name" {
    description = "Name for the Internet Gateway - IGW allows ec2 instance to access the internet"
    type        = string
}
# Variables for Route Table configuration
variable "route_table_name" {
    description = "Name for the route table - Route tables directs where the network traffic is directed in the VPC"
    type        = string
}


# Security Group module variables
# Variable for security group name
variable "my_SG_name" {
    description = "Security Group Name"
    type        = string
}


