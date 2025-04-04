# variables.tf
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "VPC Subnet ID for the EC2 instance"
  type        = string
}

variable "security_group_id" {
  description = "VPC Security Group ID for the EC2 instance"
  type        = string
}

variable "instance_tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
}
