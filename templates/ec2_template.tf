# main.tf for EC2 resource

module "ec2_instance" {
  source = "git::https://github.com/myorg/terraform-modules//ec2?ref=main"

  ami                 = var.ami_id           # Example variable for AMI ID
  instance_type       = var.instance_type     # Example variable for EC2 instance type
  subnet_id           = var.subnet_id         # VPC Subnet ID
  vpc_security_group_id = var.security_group_id  # Security Group ID

  tags = var.instance_tags  # Example variable for tags
}
