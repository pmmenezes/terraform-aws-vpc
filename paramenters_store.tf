resource "aws_ssm_parameter" "vpc_id" {
  name  = format("/%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "vpc_cidr" {
  name  = format("/%s/vpc/vpc_cidr", var.project_name)
  type  = "String"
  value = aws_vpc.main.cidr_block
}

resource "aws_ssm_parameter" "subnet_public_1a" {
  name  = format("/%s/vpc/subnet_public_1a", var.project_name)
  type  = "String"
  value = aws_subnet.public-subnet-1a.id
}

resource "aws_ssm_parameter" "subnet_public_1b" {
  name  = format("/%s/vpc/subnet_public_1b", var.project_name)
  type  = "String"
  value = aws_subnet.public-subnet-1b.id
}

resource "aws_ssm_parameter" "subnet_public_1c" {
  name  = format("/%s/vpc/subnet_public_1c", var.project_name)
  type  = "String"
  value = aws_subnet.public-subnet-1c.id
}

### ssm parameter pivates subnetes
resource "aws_ssm_parameter" "subnet_private_1a" {
  name  = format("/%s/vpc/subnet_private_1a", var.project_name)
  type  = "String"
  value = aws_subnet.private-subnet-1a.id
}

resource "aws_ssm_parameter" "subnet_private_1b" {
  name  = format("/%s/vpc/subnet_private_1b", var.project_name)
  type  = "String"
  value = aws_subnet.private-subnet-1b.id
}

resource "aws_ssm_parameter" "subnet_private_1c" {
  name  = format("/%s/vpc/subnet_private_1c", var.project_name)
  type  = "String"
  value = aws_subnet.private-subnet-1c.id
}

### ssm parameter databaes subnets
resource "aws_ssm_parameter" "subnet_database_1a" {
  name  = format("/%s/vpc/subnet_database_1a", var.project_name)
  type  = "String"
  value = aws_subnet.database-subnet-1a.id
}

resource "aws_ssm_parameter" "subnet_database_1b" {
  name  = format("/%s/vpc/subnet_database_1b", var.project_name)
  type  = "String"
  value = aws_subnet.database-subnet-1b.id
}

resource "aws_ssm_parameter" "subnet_database_1c" {
  name  = format("/%s/vpc/subnet_database_1c", var.project_name)
  type  = "String"
  value = aws_subnet.database-subnet-1c.id
}