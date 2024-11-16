resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-rt-public", var.project_name)
  }
}

resource "aws_route_table" "private_1a" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-rt-private-1a", var.project_name)
  }
}

resource "aws_route_table" "private_1b" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-rt-private-1b", var.project_name)
  }
}

resource "aws_route_table" "private_1c" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = format("%s-rt-private-1c", var.project_name)
  }
}