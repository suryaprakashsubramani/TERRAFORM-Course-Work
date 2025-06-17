# VPC_ID variable
variable "vpc_id" {
    description = "value of the VPC ID where the EC2 instance will be launched"
}

# Security Group Name variable
variable "my_SG_name" {
    description = "Security Group Name"
    type        = string
}