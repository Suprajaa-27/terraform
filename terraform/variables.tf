# modules/lambda_s3_trigger/variables.tf

variable "region" {
  description = "Region in which lambda function and bcuket will be created."
  default     = "eu-north-1"
}

variable "lambda_function_name" {
  type        = string
  description = "The name of the Lambda Function."
  default     = "s3-trigger-lambda"
}

variable "handler" {
  description = "The Lambda function handler."
  default     = "lambda_function.lambda_handler"
}

variable "runtime" {
  description = "The Lambda function runtime."
  default     = "python3.11"
}

# variable "role_arn" {
#   description = "The ARN of the IAM role for the Lambda function."
#   type = string
# }

# variable "filename" {
#   description = "The path to the Lambda function deployment package (ZIP file)."
# }

# variable "trigger_events" {
#   description = "List of S3 trigger events."
#   default     = ["s3:ObjectCreated:*"]
# }

# variable "filter_prefix" {
#   description = "Prefix filter for S3 events."
#   default     = ""
# }

# variable "filter_suffix" {
#   description = "Suffix filter for S3 events."
#   default     = ".json"
# }

variable "bucket_name" {
  description = "S3 bucket to trigger lambda function when a json file is created"
  default     = "s3-trigger-lambda-function-test12345"
}

# variable "s3_bucket_id" {
#   description = "S3 bucket to trigger lambda function when a json file is created"
# }

# variable "lambda_source_dir" {
#   description = "Source directory for Lambda function code"
#   type        = string
#   default = "../../src"

# }

# variable "lambda_output_path" {
#   description = "Output path for the Lambda function zip file"
#   type        = string
#   default = "../../lambda_function.zip"
# }


