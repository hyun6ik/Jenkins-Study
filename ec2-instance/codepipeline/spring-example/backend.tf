terraform {
  backend "s3" {
    bucket = "hyun6ik-backend"
    key = "codepipeline/spring-example/terraform.tfstate"
    region = "ap-northeast-2"
    max_retries = 3
  }
}