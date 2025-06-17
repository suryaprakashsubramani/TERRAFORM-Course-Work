# This module creates an S3 bucket for storing Terraform state files.
resource "aws_s3_bucket" "s3" {
    bucket = "my-terraform-ec2-project-state-bucket"
    #region = "us-east-1"

    tags = {
      Name        = "my-terraform-ec2-project-state-bucket"
        Environment = "Dev"
    }
  
}
# This module creates a DynamoDB table for managing Terraform state locks.
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform Locks Table"
    Environment = "Dev"
  }
  
}