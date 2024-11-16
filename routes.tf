resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gw.id
  depends_on             = [aws_route_table.public]
}

resource "aws_route" "private_1a" {
  route_table_id         = aws_route_table.private_1a.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw_1a.id
  depends_on             = [aws_route_table.private_1a]
}

resource "aws_route" "private_1b" {
  route_table_id = aws_route_table.private_1b.id

  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw_1b.id
  depends_on             = [aws_route_table.private_1b]
}
resource "aws_route" "private_1c" {
  route_table_id         = aws_route_table.private_1c.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gw_1c.id
  depends_on             = [aws_route_table.private_1c]
}
