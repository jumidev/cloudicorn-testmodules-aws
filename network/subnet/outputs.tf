output "arn" {
  value = aws_subnet.this.arn
}

output "id" {
  value = aws_subnet.this.id
}

output "name" {
  value = var.name
}

output "cidr_block" {
  value = aws_subnet.this.cidr_block
}

output "region" {
  value = var.aws_region
}

output "map_public_ip_on_launch" {
  value = aws_subnet.this.map_public_ip_on_launch
}

output "outpost_arn" {
  value = aws_subnet.this.outpost_arn
}

output "owner_id" {
  value = aws_subnet.this.owner_id
}

output "assign_ipv6_address_on_creation" {
  value = aws_subnet.this.assign_ipv6_address_on_creation
}
