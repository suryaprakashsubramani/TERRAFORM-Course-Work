terraform {
  backend "s3" {
    bucket         = "my-terraform-ec2-project-state-bucket"
    key            = "Terraform_EC2/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true
    
    encrypt        = true
    
  }
}