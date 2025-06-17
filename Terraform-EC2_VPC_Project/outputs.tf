output "EC2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.EC2_Instance.instance_id
}

output "VPC_id" {
    description = "The ID of the VPC created"
    value = module.VPC.vpc_id
}
output "subnet_id" {
    description = "The ID of the subnet created"
    value = module.VPC.subnet_id
}
output "sg_id" {
    description = "The ID of the security group created"
    value = module.SG.sg_id
}