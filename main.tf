module "lambda_s3_trigger" {
  source         = "./modules/lambda_s3_trigger"
  region         = var.region
  function_name  = var.function_name
  handler        = var.handler
  runtime        = var.runtime
  role_arn       = module.lambda_iam.iam_role_arn
  filename       = "${path.module}/lambda_function.zip"
  s3_bucket_id   = module.lambda_s3_trigger.s3_bucket_id
  trigger_events = var.trigger_events
  filter_prefix  = var.filter_prefix
  filter_suffix  = var.filter_suffix
}

module "lambda_iam" {
  source = "./modules/iam_lambda"


  lambda_function_name = module.lambda_s3_trigger.aws_lambda_function_name
  s3_bucket_arn        = module.lambda_s3_trigger.s3_bucket_arn
}







