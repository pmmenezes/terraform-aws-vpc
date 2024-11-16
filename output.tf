output "ssm_vpc_id" {
  value = aws_ssm_parameter.vpc_id.id
}

output "azs" {
  value = data.aws_availability_zones.available.names
}
output "ssm_vpc_cidr" {
  value = aws_ssm_parameter.vpc_cidr.id
}

output "ssm_subnet_private_1a" {
  value = aws_ssm_parameter.subnet_private_1a.id
}

output "ssm_subnet_private_1b" {
  value = aws_ssm_parameter.subnet_private_1b.id
}

output "ssm_subnet_private_1c" {
  value = aws_ssm_parameter.subnet_private_1c.id
}


output "ssm_subnet_public_1a" {
  value = aws_ssm_parameter.subnet_public_1a.id
}

output "ssm_subnet_public_1b" {
  value = aws_ssm_parameter.subnet_public_1b.id
}

output "ssm_subnet_public_1c" {
  value = aws_ssm_parameter.subnet_public_1c.id
}

output "ssm_subnet_database_1a" {
  value = aws_ssm_parameter.subnet_database_1a.id
}

output "ssm_subnet_database_1b" {
  value = aws_ssm_parameter.subnet_database_1b.id
}

output "ssm_subnet_database_1c" {
  value = aws_ssm_parameter.subnet_database_1c.id
}