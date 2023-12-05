module "infra" {
    source = "./Infra"
    bucket = var.bucket
    region = var.region
    lambda_arn = output.lambda_arn
}








