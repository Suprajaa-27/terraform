# creating zip file
data "archive_file" "zip_python_code"{
    type = "zip"
    source_dir = "${path.module}/src"
    output_path = "${path.module}/src/lambda_function.zip"
}

# creating Lambda function
resource "aws_lambda_function" "s3_trigger_lambda" {
  function_name = "s3-trigger-lambda-function"
  handler      = "lambda_function.lambda_handler"
  runtime      = "python3.11"
  role         = var.lambda_arn
  filename     = "${path.module}/src/lambda_function.zip"

}


# Define the S3 bucket event trigger
resource "aws_s3_bucket_notification" "s3_event_trigger" {
  bucket = aws_s3_bucket.s3_bucket.id
  lambda_function {
    lambda_function_arn = aws_lambda_function.s3_trigger_lambda.arn
    events              = ["s3:ObjectCreated:*"]
    filter_prefix       = ""  # You can specify a prefix here if needed
    filter_suffix       = ".json"  # You can specify a suffix here if needed
  }
}