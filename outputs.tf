output "vpc_id" {
    value = data.aws_vpc.selected.id
}

output "public_subnets" {
  value = data.aws_subnet.public.*.id
}

output "private_subnets" {
  value = data.aws_subnet.private.*.id
}
