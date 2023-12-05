 # modules/iam_lambda/variables.tf

variable "lambda_function_name" {
  description = "Name of the Lambda function."
}

variable "s3_bucket_arn" {
  description = "ARN of the S3 bucket."
}
