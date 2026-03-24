resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "ai" {
  name                = var.app_insights_name
  resource_group_name = var.resource_group_name
  location            = var.location
  workspace_id        = azurerm_log_analytics_workspace.law.id
  application_type    = "web"
}