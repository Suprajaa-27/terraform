module "lambda_s3_trigger" {
  source         = "./modules/lambda_s3_trigger"
  region         = var.region
  lambda_function_name  = var.function_name
  handler        = var.handler
  runtime        = var.runtime
  role_arn       = module.lambda_s3_trigger.lambda_role_arn
  filename       = "${path.module}/lambda_function.zip"
  s3_bucket_id   = module.lambda_s3_trigger.s3_bucket_id
  trigger_events = var.trigger_events
  filter_prefix  = var.filter_prefix
  filter_suffix  = var.filter_suffix
}







