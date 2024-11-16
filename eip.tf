resource "aws_eip" "vpc_eip_1a" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1a", var.project_name)
  }
}

resource "aws_eip" "vpc_eip_1b" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1b", var.project_name)
  }
}


resource "aws_eip" "vpc_eip_1c" {
  domain = "vpc"
  tags = {
    Name = format("%s-eip-1c", var.project_name)
  }
}