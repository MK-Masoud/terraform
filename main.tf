# azure_app_service_plan.tf
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}




resource "azurerm_resource_group" "rc" {
name = var.resource_group_name-
location  = var.location
}


resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name-

  sku {
    tier = "Standard"
    size = "S1"
  }
  depends_on = [ azurerm_resource_group.rc ]
}


resource "azurerm_container_registry" "acr" {
  name                     = var.acr_name
  resource_group_name      = var.resource_group_name-
  location                 = var.location
  sku                      = "Basic"
  admin_enabled            = false
  depends_on = [ azurerm_resource_group.rc ]
}



variable "SKU" {
  default = "S1"
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name-
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id
  depends_on = [ azurerm_resource_group.rc ]

}


