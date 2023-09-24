resource "aws_subnet" "this" {
  vpc_id                          = var.vpc_id
  availability_zone               = var.availability_zone 

  cidr_block                      = var.cidr_block
  map_public_ip_on_launch         = var.map_public_ip_on_launch
  outpost_arn                     = var.outpost_arn
  assign_ipv6_address_on_creation = var.assign_ipv6_address_on_creation
  ipv6_cidr_block                 = var.ipv6_cidr_block

  tags = {
    Name = var.name
  }
}