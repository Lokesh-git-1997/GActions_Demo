
terraform {
  backend "s3" {
    bucket         = "gac-test-bucket009"
    key            = "GAC/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "gac-test-db009"
  }
}

