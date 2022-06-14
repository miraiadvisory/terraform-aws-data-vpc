output "vpc_id" {
  value = data.aws_vpc.selected.id
}

output "cidr_block" {
  value = data.aws_vpc.selected.cidr_block
}

output "public_subnets" {
  value = [for s in data.aws_subnet.public : s.id] 
}

output "private_subnets" {
  value = [for s in data.aws_subnet.private : s.id]
}
