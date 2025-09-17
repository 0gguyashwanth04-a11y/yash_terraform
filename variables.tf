variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type    = string
  default = ""
  description = "Optional local AWS CLI profile name (leave blank when using env creds or HCP workspace credentials)"
}

variable "project_name" {
  type    = string
  default = "new-infra-3-tier"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "asg_desired" {
  type    = number
  default = 2
}

variable "admin_cidr" {
  type    = string
  default = "0.0.0.0/0"
  description = "CIDR block allowed to SSH/SSM (restrict this in production - use your IP e.g. 1.2.3.4/32)"
}

variable "db_username" {
  type    = string
  default = "dbadmin"
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "db_allocated_storage" {
  type    = number
  default = 20
}
