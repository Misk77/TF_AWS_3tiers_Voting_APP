output "Public_IPv4_address" {
  description = "Output the public IP"
  value       = aws_instance.dockerHost.*.public_ip
}

output "Public_IPv4_DNS" {
  description = "Output the public DNS"
  value       = aws_instance.dockerHost.public_dns
}

