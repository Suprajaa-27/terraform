module "s3_lambda" {
    source = "./infra"
    bucket = var.bucket
    region = var.region



}

# Define the Lambda function
# resource "aws_lambda_function" "example_lambda" {
#   function_name = "example-lambda"
#   handler      = "index.handler"
#   runtime      = "python3.11"
#   role         = aws_iam_role.lambda_role.arn
#   filename     = "lambda-function.zip"  # Replace with the path to your Lambda deployment package
# }

# # Define an IAM role for the Lambda function
# resource "aws_iam_role" "lambda_role" {
#   name = "example-lambda-role"

#   assume_role_policy = jsonencode({
#     Version = "2012-10-17",
#     Statement = [
#       {
#         Action = "sts:AssumeRole",
#         Effect = "Allow",
#         Principal = {
#           Service = "lambda.amazonaws.com"
#         }
#       }
#     ]
#   })
# }

# # Define an S3 bucket


# # Grant the Lambda function permissions to read from the S3 bucket
# resource "aws_lambda_permission" "s3_trigger_permission" {
#   statement_id  = "AllowExecutionFromS3Bucket"
#   action        = "lambda:InvokeFunction"
#   function_name = aws_lambda_function.example_lambda.function_name
#   principal     = "s3.amazonaws.com"
#   source_arn   = aws_s3_bucket.example_bucket.arn
# }

# # Define the S3 bucket event trigger
# resource "aws_s3_bucket_notification" "example_s3_trigger" {
#   bucket = aws_s3_bucket.example_bucket.id

#   lambda_function {
#     lambda_function_arn = aws_lambda_function.example_lambda.arn
#     events              = ["s3:ObjectCreated:*"]
#     filter_prefix       = ""  # You can specify a prefix here if needed
#     filter_suffix       = ".json"  # You can specify a suffix here if needed
#   }
# }
