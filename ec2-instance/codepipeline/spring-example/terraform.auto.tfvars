env = "dev"
name = "spring-example"
owner = "hyun6ik"
tags = {}

trusted_role_services = ["codepipeline.amazonaws.com"]
custom_role_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
  "arn:aws:iam::aws:policy/AWSCodeStarFullAccess",
  "arn:aws:iam::aws:policy/AWSCodeBuildAdminAccess",
  "arn:aws:iam::aws:policy/AWSCodeDeployFullAccess",
]

codebuild_key = "codebuild/terraform.tfstate"
codedeploy_app_key = "codedeploy/app/terraform.tfstate"
codedeploy_deployment_group_key = "codedeploy/deployment/terraform.tfstate"
