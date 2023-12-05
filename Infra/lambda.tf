resource "aws_lambda_function" "s3_trigger_lambda" {
  function_name = "s3_trigger_lambda"
  handler      = "handler.handler"
  runtime      = "python3.11"
  role         = aws_iam_role.lambda_role.arn
  filename     = "lambda-function.zip"  # Replace with the path to your Lambda deployment package
}