
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "~> 4.70"
    }
  }
}

provider "azurerm" {
  features {}
subscription_id = "9097d0f8-4798-48d3-891f-83da77060e96"

    
  
}

resource "azurerm_resource_group" "backendpractice" {
  name     = "main_rg"
  location = "centralindia"
}

resource "azurerm_storage_account" "backendstorage" {
  name                     = "mainstoragebacken33"
  resource_group_name      = azurerm_resource_group.backendpractice.name
  location                 = azurerm_resource_group.backendpractice.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
resource "azurerm_storage_container" "backendcontainer" {
  name                  = "maincontainer"
  storage_account_id    = azurerm_storage_account.backendstorage.id
  container_access_type = "private"
}
