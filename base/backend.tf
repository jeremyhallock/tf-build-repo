# backend.tf
terraform {
  backend "s3" {
    bucket         = var.state_bucket_name
    key            = "terraform/state.tfstate"
    region         = var.aws_region
    encrypt        = true
    dynamodb_table = var.dynamodb_table_name
    acl            = "bucket-owner-full-control"
  }
}
