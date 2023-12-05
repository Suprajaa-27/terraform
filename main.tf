module "infra" {
    source = "./Infra"
    bucket = var.bucket
    region = var.region
    lambda_iam_role_arn = module.infra.lambda_iam_role_arn
}








