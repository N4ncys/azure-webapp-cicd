variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "rg-webapp-cicd"
}

variable "location" {
  description = "Azure region"
  default     = "canadacentral"
}

variable "app_name" {
  description = "Name of the application"
  default     = "azure-webapp-cicd"
}

variable "acr_name" {
  description = "Name of the Azure Container Registry"
  default     = "acrwebappcicd"
}

variable "keyvault_name" {
  description = "Name of the Key Vault"
  default     = "kv-webapp-cicd"
}


variable "law_name" {
  description = "Name of the Log Analytics Workspace"
  default     = "law-webapp-cicd"
}

variable "app_insights_name" {
  description = "Name of the Application Insights"
  default     = "ai-webapp-cicd"
}


variable "environment_name" {
  description = "Name of the Container Apps Environment"
  default     = "cae-webapp-cicd"
}

variable "container_image" {
  description = "Container image to deploy"
  default     = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
}