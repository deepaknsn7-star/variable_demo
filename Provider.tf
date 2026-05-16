terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # version = "4.71.0"
    }
  }
  backend "azurerm" {
    
    resource_group_name = "main_rg2"            
    storage_account_name = "mainstoragebacken22"                             
    container_name       = "maincontainer"                              
    
  }
}
 

provider "azurerm" {
  features {}
subscription_id = "9097d0f8-4798-48d3-891f-83da77060e96"
    
  }

  resource "azurerm_resource_group" "deepu" {
  name     = "rg_test_New"
  location = "West Europe"
}

resource "azurerm_storage_account" "deep_storage54" {
  name                     = "dakshstorage95${random_string.random1.result}"
  resource_group_name      = azurerm_resource_group.deepu.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"

}

