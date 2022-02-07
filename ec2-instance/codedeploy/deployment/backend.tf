terraform {
  backend "s3" {
    bucket = "hyun6ik-backend"
    key = "codedeploy/deployment/terraform.tfstate"
    region = "ap-northeast-2"
    max_retries = 3
  }
}