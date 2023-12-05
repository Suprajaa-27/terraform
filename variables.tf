# variable bucket {
#     type = string
#     description = "Bucket where files are uploaded to trigger lambda function"
# }

variable region {
    type = string
    description = "Region in which terraform will be deployed"
}

variable "function_name" {
  type = string
  description = "The name of the Lambda Function."
}

variable "handler" {
  description = "The Lambda function handler."
}

variable "runtime" {
  description = "The Lambda function runtime."
}

variable "filter_prefix" {
  description = "Prefix filter for S3 events."
  default     = ""
}

variable "filter_suffix" {
  description = "Suffix filter for S3 events."
  default     = ".json"
}

variable "trigger_events" {
  description = "List of S3 trigger events."
  default     = ["s3:ObjectCreated:*"]
}

