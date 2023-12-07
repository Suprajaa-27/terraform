module "lambda_s3_trigger" {
  source               = "./modules/lambda_s3_trigger"
  bucket_name          = var.bucket_name
  region               = var.region
  lambda_function_name = var.function_name
  handler              = var.handler
  runtime              = var.runtime
  role_arn             = module.lambda_s3_trigger.lambda_role_arn
  filename             = "${path.module}/${var.filename}"
  s3_bucket_id         = aws_s3_bucket.s3_bucket_id
  trigger_events       = var.trigger_events
  filter_prefix        = var.filter_prefix
  filter_suffix        = var.filter_suffix
  source_dir           = "${path.module}/${var.lambda_source_dir}"
  output_path          = "${path.module}/${var.lambda_output_path}"

}







