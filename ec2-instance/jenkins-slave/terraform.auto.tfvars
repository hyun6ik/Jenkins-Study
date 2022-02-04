env       = "dev"
name      = "jenkins-slave"
slave_cnt = 2

owner = "dj.kim"
tags  = {}

# AMI
ami_owners = ["amazon"]
ami_filters = [
  {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
]

ssh_sg_description = "SSH Security group for Bastion EC2 instance"
ssh_ingress_cidr_blocks = ["116.39.225.234/32"]
ssh_ingress_rules = ["ssh-tcp"]
ssh_egress_rules = ["all-all"]

# EC2
instance_type = "t2.micro"
key_name      = "dev"

# IAM
trusted_role_services = [
  "ec2.amazonaws.com"
]
custom_role_policy_arns = [
  "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryFullAccess"
]