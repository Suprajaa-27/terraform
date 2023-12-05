# modules/lambda_s3_trigger/main.tf

resource "aws_lambda_function" "s3_trigger_lambda" {
  function_name = var.function_name
  handler      = var.handler
  runtime      = var.runtime
  role         = var.role_arn
  filename     = var.filename
}

resource "aws_s3_bucket_notification" "s3_event_trigger" {
  bucket = var.s3_bucket_id

  lambda_function {
    lambda_function_arn = aws_lambda_function.s3_trigger_lambda.arn
    events              = var.trigger_events
    filter_prefix       = var.filter_prefix
    filter_suffix       = var.filter_suffix
  }
}
