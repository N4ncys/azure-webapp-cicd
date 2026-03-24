terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
}

module "acr" {
  source              = "./modules/acr"
  acr_name            = var.acr_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}

module "keyvault" {
  source              = "./modules/keyvault"
  keyvault_name       = var.keyvault_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}


module "monitoring" {
  source              = "./modules/monitoring"
  law_name            = var.law_name
  app_insights_name   = var.app_insights_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
}


module "container_apps" {
  source              = "./modules/container_apps"
  environment_name    = var.environment_name
  app_name            = var.app_name
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  law_id              = module.monitoring.law_id
  container_image     = var.container_image
}