resource "aws_instance" "public-server" {
  ami                         = "ami-04823729c75214919"
  instance_type               = "t2.medium"
  key_name                    = "Devops"
  vpc_security_group_ids      = ["${aws_security_group.wpsg.id}"]
  subnet_id                   = aws_subnet.public-subnet.id
  associate_public_ip_address = true
  #user_data                   = file("data.sh")
  tags = {
    Name = "public-server"
  }
}


