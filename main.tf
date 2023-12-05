module "infra" {
    source = "./Infra"
    bucket = var.bucket
    region = var.region
    lambda_iam_role_arn = outputs.lambda_iam_role_arn 
}








