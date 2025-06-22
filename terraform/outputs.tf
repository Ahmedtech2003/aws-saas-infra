output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}


output "private_key_pem" {
  description = "The PEM-encoded private key for SSH access"
  value       = tls_private_key.ssh_key.private_key_pem
  sensitive   = true
}

