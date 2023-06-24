output "instance_ip_addr" {
  value = aws_instance.server.private_ip
  description = "Przykładowy output."
  sensitive = true
}
