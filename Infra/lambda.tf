resource "aws_lambda_function" "example_lambda" {
  function_name = "example-lambda"
  handler      = "index.handler"
  runtime      = "python3.11"
  role         = aws_iam_role.lambda_role.arn
  filename     = "lambda-function.zip"  # Replace with the path to your Lambda deployment package
}