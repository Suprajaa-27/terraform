# # modules/lambda_s3_trigger/outputs.tf

output "lambda_function_arn" {
  description = "The ARN of the created Lambda function."
  value       = aws_lambda_function.s3_trigger_lambda[*].arn
}

# output "s3_trigger_id" {
#   description = "The ID of the created S3 trigger."
#   value       = aws_s3_bucket_notification.s3_event_trigger.id
# }

output "s3_bucket_id" {
  description = "The ID of s3 bucket."
  value       = aws_s3_bucket.s3_bucket[*].id
}

output "s3_bucket_arn" {
  description = "The arn of s3 bucket."
  value       = aws_s3_bucket.s3_bucket[*].arn
}

output "lambda_role_arn" {
  description = "The arn of lambda role"
  value       = [for i in module.lambda_s3_trigger : i.lambda_role_arn]
}
