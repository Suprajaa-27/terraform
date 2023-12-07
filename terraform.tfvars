
region        = "eu-north-1"
function_name = "s3-trigger-lambda-function"
handler       = "lambda_function.lambda_handler"
runtime       = "python3.11"
bucket_name   = "s3-bucket-to-trigger-lambda-function"
lambda_source_dir = "../../src"
lambda_output_path = "../../lambda_function.zip"
filename = "lambda_function.zip"

