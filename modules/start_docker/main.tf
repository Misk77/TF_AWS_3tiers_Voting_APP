 # Execute the script
  # Change permissions on bash script and execute from ec2-user.
  

  provisioner "remote-exec" {
    inline = [
    #  "chmod +x ~/../../tmp/docker_compose_startup",
      "docker-compose -f /tmp/voting-app/docker-compose-simple.yml build",
    ]
  }

