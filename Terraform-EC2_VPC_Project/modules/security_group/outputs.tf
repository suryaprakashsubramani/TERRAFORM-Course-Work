# Security Group id for the EC2 Instance
output "sg_id" {
    description = "The ID of the security group created for the EC2 instance"
    value = aws_security_group.my_SG.id
}