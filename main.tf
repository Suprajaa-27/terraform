module "infra" {
    source = "./Infra"
    bucket = var.bucket
    region = var.region
    lambda_iam_role_arn = output.lambda_iam_role_arn
}








