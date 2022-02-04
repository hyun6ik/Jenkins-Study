locals {
  region = var.region

  slave_names = [for cnt in range(0, var.slave_cnt) : format("%s-%s-ec2", var.name, cnt)]
  role_name   = format("%s-role", var.name)
  ssh_sg_name = format("%s-ssh-sg", var.name)

  tags = merge(var.tags, { Owner = var.owner, Environment = var.env })

  vpc_id             = data.terraform_remote_state.vpc.outputs.vpc_id
  public_subnet_ids = data.terraform_remote_state.vpc.outputs.public_subnet_ids
  azs                = data.terraform_remote_state.vpc.outputs.azs
  default_sg_id      = data.terraform_remote_state.vpc.outputs.default_security_group_id

  trusted_role_services = var.trusted_role_services
  custom_role_policy_arns = var.custom_role_policy_arns

  ssh_sg_description = var.ssh_sg_description
  ssh_ingress_cidr_blocks = var.ssh_ingress_cidr_blocks
  ssh_ingress_rules = var.ssh_ingress_rules
  ssh_egress_rules = var.ssh_egress_rules

  ami_id        = data.aws_ami.this.id
  ami_owners    = var.ami_owners
  ami_filters   = var.ami_filters
  instance_type = var.instance_type
  key_name      = var.key_name
}