variable name {
  type        = string
  description = "name of vpc"
}

variable cidr_block {
  type        = string
  default = ""
  description = "cidr of vpc"
}

variable enable_dns_support {
  type        = bool
  default = true
  description = "enable_dns_support for vpc"
}

variable enable_dns_hostnames {
  type        = bool
  default = false
  description = "enable_dns_hostnames for vpc"
}

variable instance_tenancy {
  type        = string
  default = "default"
  description = "instance_tenancy for vpc"
}

