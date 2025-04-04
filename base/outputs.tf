# outputs.tf
output "ec2_instance_id" {
  value = module.ec2_instance.id
}

output "rds_endpoint" {
  value = module.rds_instance.endpoint
}

output "s3_bucket_name" {
  value = module.s3_bucket.bucket
}
