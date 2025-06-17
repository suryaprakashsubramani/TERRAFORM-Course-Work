# Security Group Module
# This module creates a security group with specific ingress and egress rules.

resource "aws_security_group" "my_SG" {
    description = "Security Group for my application,allows inbound and outbound traffic on port 80 and 22"
    vpc_id = var.vpc_id
    tags = {
      Name = var.my_SG_name
    }

    # Allow inbound traffic on port 80 (HTTP)
    ingress  {
        description = "Allow inbound traffic on port 80 (HTTP)"
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  # 👈 Anywhere IPv4
    }
    # Allow inbound traffic on port 22 (SSH)
    ingress  {
        description = "Allow inbound traffic on port 22 (SSH)"
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"] # 👈 Anywhere IPv4
    }
    egress {
        description = "Allow all outbound traffic"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"  # 👈 All protocols
        cidr_blocks = ["0.0.0.0/0"]  # 👈 Allow all outbound traffic
    }
}