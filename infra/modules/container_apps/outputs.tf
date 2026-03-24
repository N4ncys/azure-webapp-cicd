output "app_url" {
  value = azurerm_container_app.app.latest_revision_fqdn
}

output "app_identity_principal_id" {
  value = azurerm_container_app.app.identity[0].principal_id
}