# Variables for VPC configuration
variable "vpc_name" {
    description = "Name of the VPC"
    type        = string
}
variable "cidr_block_VPC" {
    description = "CIDR block for the VPC"
    type        = string
}
# Variables for Subnet configuration
variable "subnet_name" {
    description = "Name for the public subnet - Public Subnet helps instance in subnet to access the internet"
    type        = string
  
}
variable "cidr_block_subnet" {
    description = "CIDR block for the public subnet"
    type        = string
  
}

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
