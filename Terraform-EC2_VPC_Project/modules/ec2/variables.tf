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

# Define the variables for the EC2 module
variable "name" {
    description = "Name tag for the EC2 instance"
    type = string   
}

# Get the subnet ID of the subnet where the EC2 instance will be launched
variable "subnet_id" {
    description = "subnet ID where the EC2 instance will be launched"
}