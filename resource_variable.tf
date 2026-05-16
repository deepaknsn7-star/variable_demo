resource "azurerm_resource_group" "xyz" {
  name     = var.X
  location = "West Europe"
}



resource "azurerm_resource_group" "xyz2" {
  name     = var.y
  location = "West Europe"
}

resource "azurerm_resource_group" "xyz3" {
  name     = var.z
  location = "West Europe"
}

resource "azurerm_resource_group" "xyz4" {
  name     = var.a
  location = var.b
}
