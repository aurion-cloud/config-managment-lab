 
 resource "aws_instance" "web_servers"{
 count = 4
  ami                    = data.aws_ami.aws_ubuntu_ami.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.public_webserver_subnet.id
  vpc_security_group_ids = [aws_security_group.public_webserver_sg.id]
  key_name               = var.my_keypair

  tags = {
      Name = "public_web_server_${count.index + 1}"
  }
}