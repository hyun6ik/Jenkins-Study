variable "env" {}
variable "name" {}
variable "owner" {}
variable "slave_cnt" {}

variable "ami_owners" {}
variable "ami_filters" {}
variable "instance_type" {}
variable "key_name" {}

variable "ssh_sg_description" {}
variable "ssh_ingress_cidr_blocks" {}
variable "ssh_ingress_rules" {}
variable "ssh_egress_rules" {}

variable "trusted_role_services" {}
variable "custom_role_policy_arns" {}