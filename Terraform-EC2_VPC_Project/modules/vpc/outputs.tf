# Get the VPC ID of the VPC created in this module
output "vpc_id" {
    value = aws_vpc.my-vpc.id
}

# Get the subnet ID of the public subnet created in this module
output "subnet_id" {
    value = aws_subnet.vpc_public_subnet.id
}

# Get the Internet Gateway ID of the Internet Gateway created in this module
output "internet_gateway_id" {
    value = aws_internet_gateway.my-internet-gateway.id
}

# Get the Route Table ID of the route table created in this module
output "route_table_id" {
    value = aws_route_table.my-route-table.id
}