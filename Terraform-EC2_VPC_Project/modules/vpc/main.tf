# VPC Creation in AWS using Terraform
resource "aws_vpc" "my-vpc" {
    cidr_block = var.cidr_block_VPC
    tags = {
      Name = var.vpc_name
    }
}

# Create a subnet in the VPC

resource "aws_subnet" "vpc_public_subnet" {
    vpc_id = aws_vpc.my-vpc.id
    cidr_block = var.cidr_block_subnet
    availability_zone = var.subnet_AZone
    map_public_ip_on_launch = true  # 👈This enables auto-assign public IPv4
    tags = {
      Name = var.subnet_name
    }
}

# Create an Internet Gateway for the VPC
resource "aws_internet_gateway" "my-internet-gateway" {
    vpc_id = aws_vpc.my-vpc.id
    tags = {
      Name = var.IGW_name
    }
}

# Create a route table for the public subnet 

resource "aws_route_table" "my-route-table" {
    vpc_id = aws_vpc.my-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-internet-gateway.id
      }      
    tags = {
        Name = var.route_table_name
    }
}

# Associate the route table with the public subnet

resource "aws_route_table_association" "Explicit_association" {
    subnet_id = aws_subnet.vpc_public_subnet.id
    route_table_id = aws_route_table.my-route-table.id
  
}