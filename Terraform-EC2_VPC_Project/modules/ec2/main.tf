
resource "aws_instance" "my-ec2-instance" {
  ami           = var.ami  # Replace with a valid AMI ID
  instance_type = var.instance_type
  subnet_id = var.subnet_id

  tags = {
    Name = var.name
  }
}