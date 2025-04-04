# providers.tf
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile  # Optional: remove if using default credentials
}
