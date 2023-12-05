variable bucket {
    type = string
    description = "Bucket where files are uploaded to trigger lambda"
}

variable region {
    type = string
    description = "Region in which terraform will be deployed"
}

variable lambda_arn  {
    type = string
    description = "Role arn"
}