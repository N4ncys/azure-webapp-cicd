variable "environment_name" {
  description = "Name of the Container Apps Environment"
}

variable "app_name" {
  description = "Name of the Container App"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure region"
}

variable "law_id" {
  description = "Log Analytics Workspace ID"
}

variable "container_image" {
  description = "Container image to deploy"
}