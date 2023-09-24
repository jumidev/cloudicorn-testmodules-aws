terraform {
  required_version = ">= 0.12.0"
  backend "local" {}
}

provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.aws_region}"
}

variable aws_region {
  type = string
}

variable aws_secret_access_key {
  type = string
}

variable aws_access_key_id {
  type = string
}