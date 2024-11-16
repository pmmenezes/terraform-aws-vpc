### Private Subnets ##### 
resource "aws_subnet" "private-subnet-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = format("%sa", var.region)
  tags = {
    Name = format("%s-private-subnet-1a", var.project_name)
  }

}

resource "aws_subnet" "private-subnet-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = format("%sb", var.region)
  tags = {
    Name = format("%s-private-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "private-subnet-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = format("%sc", var.region)
  tags = {
    Name = format("%s-private-subnet-1c", var.project_name)
  }
}

resource "aws_route_table_association" "private_1a" {
  subnet_id      = aws_subnet.private-subnet-1a.id
  route_table_id = aws_route_table.private_1a.id
}
resource "aws_route_table_association" "private_1b" {
  subnet_id      = aws_subnet.private-subnet-1b.id
  route_table_id = aws_route_table.private_1b.id
}
resource "aws_route_table_association" "private_1c" {
  subnet_id      = aws_subnet.private-subnet-1c.id
  route_table_id = aws_route_table.private_1c.id
}

### Publics Subnets ##### 

resource "aws_subnet" "public-subnet-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = format("%sa", var.region)
  tags = {
    Name = format("%s-public-subnet-1a", var.project_name)
  }

}

resource "aws_subnet" "public-subnet-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = format("%sb", var.region)
  tags = {
    Name = format("%s-public-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "public-subnet-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = format("%sc", var.region)
  tags = {
    Name = format("%s-public-subnet-1c", var.project_name)
  }
}

resource "aws_route_table_association" "public_1a" {
  subnet_id      = aws_subnet.public-subnet-1a.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public_1b" {
  subnet_id      = aws_subnet.public-subnet-1b.id
  route_table_id = aws_route_table.public.id
}
resource "aws_route_table_association" "public_1c" {
  subnet_id      = aws_subnet.public-subnet-1c.id
  route_table_id = aws_route_table.public.id
}


### Database Subnets ##### 
resource "aws_subnet" "database-subnet-1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = format("%sa", var.region)
  tags = {
    Name = format("%s-database-subnet-1a", var.project_name)
  }

}

resource "aws_subnet" "database-subnet-1b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.7.0/24"
  availability_zone = format("%sb", var.region)
  tags = {
    Name = format("%s-database-subnet-1b", var.project_name)
  }
}

resource "aws_subnet" "database-subnet-1c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.8.0/24"
  availability_zone = format("%sc", var.region)
  tags = {
    Name = format("%s-database-subnet-1c", var.project_name)
  }
}