resource "aws_instance" "dockerHost" {
  ami             = var.ami
  instance_type   = var.instance_type
  count           = var.number_instances
  key_name        = var.key_name
  security_groups = [aws_security_group.terraform.name]
  user_data       = file("scripts/user_data")

  connection {
    type        = "ssh"
    agent       = false
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file("../../key/ubuntu-docker-host.pem")
    #timeout     = "10m"
  }

  tags = {
    Name = var.instanceName
  }


  # Copy the app into ec2
  provisioner "file" {
    source      = "~/FTP/Terraform/AWS/aws-ec2-3-tier/ec2-instance/voting-app"
    destination = "~/app"
  }
}





/*
Below not nedeed, we start this install everything, verify that voting app is working
Create an ami, and using that ami in the terraform
*/

/*
  #  Copy docker_compose_startup
  provisioner "file" {
    source      = "scripts/docker_compose_startup.sh"
    destination = "~/app/docker_compose_startup"
  }*/

/*
# Execute the script
# Change permissions on bash script and execute from ec2-user.
  provisioner "remote-exec" {
    inline = [
      "sleep 3m",
      "sudo chmod +x ~/../../tmp/docker_compose_startup",
      "sudo ~/../../tmp/docker_compose_startup"]
  }*/
/*
provisioner "local-exec" {
    command = "bash ${path.module}/azure-ad.sh ${var.sp_name} "
  }*/


