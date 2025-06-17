#Get the instance ID of the EC2 instance

output "instance_id" {
    value = aws_instance.my-ec2-instance.id
}