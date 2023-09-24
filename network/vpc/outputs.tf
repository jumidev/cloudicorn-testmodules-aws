output "arn" {
  value = aws_vpc.this.arn
}

output "id" {
  value = aws_vpc.this.id
}

output "name" {
  value = var.name
}

output "cidr_block" {
  value = aws_vpc.this.cidr_block
}

output "region" {
  value = var.aws_region
}

output "instance_tenancy" {
  value = aws_vpc.this.instance_tenancy
}

output "enable_dns_support" {
  value = aws_vpc.this.enable_dns_support
}

output "enable_dns_hostnames" {
  value = aws_vpc.this.enable_dns_hostnames
}
