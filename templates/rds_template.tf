# main.tf for RDS resource

module "rds_instance" {
  source = "git::https://github.com/myorg/terraform-modules//rds?ref=main"

  db_instance_identifier = var.db_instance_identifier
  allocated_storage      = var.allocated_storage
  engine                 = var.db_engine
  instance_class         = var.db_instance_class
  username               = var.db_username
  password               = var.db_password
  db_name                = var.db_name
  subnet_group_name      = var.db_subnet_group

  tags = var.db_tags  # Example variable for tags
}
