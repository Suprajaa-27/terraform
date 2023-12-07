# Creating s3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  count = var.create_resources ? 1 : 0
  bucket = var.bucket_name
}
resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
  count = var.create_resources ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket[count.index].id
  rule {
    id = "object-lifecycle-rule"

    expiration {
      days = 90
    }
    status = "Enabled"
    transition {
      days          = 30
      storage_class = "STANDARD_IA"
    }

    transition {
      days          = 60
      storage_class = "GLACIER"
    }
  }
}

resource "aws_s3_bucket_versioning" "object-versioning" {
  count = var.create_resources ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket[count.index].id
  versioning_configuration {
    status = "Enabled"
  }
}
resource "aws_s3_bucket_object_lock_configuration" "object-lock" {
  count = var.create_resources ? 1 : 0
  bucket = aws_s3_bucket.s3_bucket[count.index].id
  rule {
    default_retention {
      mode = "COMPLIANCE"
      days = 5
    }
  }
}
