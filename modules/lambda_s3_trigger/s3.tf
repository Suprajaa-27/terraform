# Creating s3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_bucket
}
