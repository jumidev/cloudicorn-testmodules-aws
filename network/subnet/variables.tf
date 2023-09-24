variable name {
  type        = string
  description = "name of resource"
}

variable cidr_block {
  type        = string
  default     = ""
  description = "cidr of resource"
}

variable rspath_aws_vpc {
  type        = string
  description = "remote state path for aws_vpc"
}

variable outpost_arn {
  type        = string
  default     = null
  description = "(optional) outpost_arn for resource"
}

variable availability_zone {
  type        = string
  default     = null
  description = "(optional) availability_zone for resource"
}

variable map_public_ip_on_launch {
  type        = bool
  default     = false
  description = "map_public_ip_on_launch for resource"
}

variable assign_ipv6_address_on_creation {
  type        = bool
  default     = false
  description = "assign_ipv6_address_on_creation for resource"
}

variable ipv6_cidr_block {
  type        = string
  default     = null
  description = "(optional) ipv6_cidr_block for resource"
}










variable enable_dns_hostnames {
  type        = bool
  default     = false
  description = "enable_dns_hostnames for vpc"
}

variable instance_tenancy {
  type        = string
  default     = "default"
  description = "instance_tenancy for vpc"
}

