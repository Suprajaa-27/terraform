variable bucket {
    type = string
    description = "Bucket where files are uploaded to trigger lambda function"
}

variable region {
    type = string
    description = "Region in which terraform will be deployed"
}

variable "function_name" {
  description = "The name of the Lambda Function."
}

variable "handler" {
  description = "The Lambda function handler."
}

variable "runtime" {
  description = "The Lambda function runtime."
}

variable "role_name" {
  description = "Name of the IAM role for the Lambda function."
}
