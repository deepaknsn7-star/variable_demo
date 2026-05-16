resource "azurerm_resource_group" "map_exaple" {
  for_each = tomap({ "mohan" = "westus", "mohan1" = "eastus", "mohan2" = "southcentralus" })
  name     = each.key
  location = each.value

}


resource "azurerm_resource_group" "map_exaple2" {
  for_each = tomap(var.apple)
  name     = each.key
  location = each.value

}