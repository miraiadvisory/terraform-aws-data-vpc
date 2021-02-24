## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.26 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Modules

No Modules.

## Resources

| Name |
|------|
| [aws_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet) |
| [aws_subnet_ids](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/subnet_ids) |
| [aws_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| vpc\_name | VPC Name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| private\_subnets | n/a |
| public\_subnets | n/a |
| vpc\_id | n/a |
