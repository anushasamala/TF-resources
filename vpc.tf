resource "aws_vpc" "wpvpc" {
  cidr_block = "192.168.0.0/16"
  tags = {
    Name = "wp-vpc"
  }
}