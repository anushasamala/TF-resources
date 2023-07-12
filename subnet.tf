resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.wpvpc.id
  cidr_block              = "192.168.1.0/24"
  map_public_ip_on_launch = true
  tags = {
    Name = "Public-subnet"
  }
}

