env = "dev"
name = "hyun6ik-jenkins-slave"
owner = "hyun6ik"
tags = {}

trusted_role_services = ["codebuild.amazonaws.com"]
custom_role_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess",
  "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess",
  "arn:aws:iam::aws:policy/AmazonVPCFullAccess",
  "arn:aws:iam::aws:policy/AmazonS3FullAccess",
]

codebuild_timeout = "10"
codebuild_source_s3 = "project"
codebuild_buildspec = "deploy/codebuild/buildspec.yml"
codebuild_envs = {
  compute_type = "BUILD_GENERAL1_SMALL"
  image = "aws/codebuild/standard:4.0"
  type = "LINUX_CONTAINER"
  privileged_mode = true
}
codebuild_cache_type = "LOCAL"