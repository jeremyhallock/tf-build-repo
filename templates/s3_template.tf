# main.tf for S3 Bucket resource

module "s3_bucket" {
  source = "git::https://github.com/myorg/terraform-modules//s3?ref=main"

  bucket_name = var.s3_bucket_name
  acl          = var.s3_acl
  tags         = var.s3_tags  # Example variable for tags
}
