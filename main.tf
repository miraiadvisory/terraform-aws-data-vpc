data "aws_vpc" "selected" {
  tags = {
    Name = var.vpc_name
  }
}

data "aws_subnets" "private" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
  tags = {
    Network = "Private"
  }
}

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.selected.id]
  }
  tags = {
    Network = "Public"
  }
}

data "aws_subnet" "public" {
  count = length(data.aws_subnets.public.ids)
  id    = tolist(data.aws_subnets.public.ids)[count.index]
}

data "aws_subnet" "private" {
  count = length(data.aws_subnets.private.ids)
  id    = tolist(data.aws_subnets.private.ids)[count.index]
}



