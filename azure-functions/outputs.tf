output "private_ip" {
  value = azurerm.server.private_ip
  description = "Przykładowy output."
  sensitive = true
}
