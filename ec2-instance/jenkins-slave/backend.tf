terraform {
  backend "s3" {
    bucket = "hyun6ik-backend"
    key = "jenkins/slave/terraform.tfstate"
    region = "ap-northeast-2"
    max_retries = 3
  }
}