# modules/iam_lambda/outputs.tf

output "iam_role_name" {
  description = "Name of the IAM role."
  value       = aws_iam_role.aws_lambda_role.name
}

output "iam_role_arn" {
    description = "Arn of IAM role."
    value = aws_iam_role.aws_lambda_role.arn
}
