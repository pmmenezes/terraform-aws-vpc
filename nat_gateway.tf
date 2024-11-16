resource "aws_nat_gateway" "nat_gw_1a" {
  allocation_id = aws_eip.vpc_eip_1a.id
  subnet_id     = aws_subnet.public-subnet-1a.id
  tags = {
    Name = format("%s-nat-gw-1a", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_gw_1b" {
  allocation_id = aws_eip.vpc_eip_1b.id
  subnet_id     = aws_subnet.public-subnet-1b.id
  tags = {
    Name = format("%s-nat-gw-1b", var.project_name)
  }
}

resource "aws_nat_gateway" "nat_gw_1c" {
  allocation_id = aws_eip.vpc_eip_1c.id
  subnet_id     = aws_subnet.public-subnet-1c.id
  tags = {
    Name = format("%s-nat-gw-1c", var.project_name)
  }
}
