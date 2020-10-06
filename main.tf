resource "aws_instance" "dockerHost" {
  ami             = var.ami
  instance_type   = var.instance_type
  key_name        = "ubuntu-docker-host"
  security_groups = [aws_security_group.terraform.name]
  user_data       = file("user_data")

  connection {
    host        = self.public_ip
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa.pub")
  }

  tags = {
    Name = "terraform_user"
  }

}
