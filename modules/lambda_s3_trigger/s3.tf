module "s3-bucket" {
  count   = var.create_bucket ? 1 : 0
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.15"

  lifecycle_rule = {
    id      = "lifecycle-rule"
    status  = "Enabled"
    prefix  = "logs/"
    enabled = true

    transition = {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    expiration = {
      days = 90
    }
  }
}
