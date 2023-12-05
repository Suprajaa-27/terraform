output "s3_bucket_arn" {
    value = aws_s3_bucket.s3_bucket.arn
}

output "lambda_function_name" {
    value = aws_lambda_function.s3_trigger_lambda.name
    description = "The name of the Lambda Function"
}
