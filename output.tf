output "public_ip" {
  description = "Output the public IP"
  value       = aws_instance.dockerHost.*.public_ip
}
