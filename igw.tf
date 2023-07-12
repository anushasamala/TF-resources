resource "aws_internet_gateway" "wpigw" {
  vpc_id = aws_vpc.wpvpc.id
  tags = {
    Name = "wp-igw"
  }
}