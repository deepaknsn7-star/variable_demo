resource "azurerm_resource_group" "list_exaple" {
for_each = toset(["ramu","ramu1","ramu2"])
    name     = each.value
    location = var.new_location
  
}

resource "azurerm_resource_group" "list_exaple2" {
for_each = toset(var.ramu)
    name     = each.key
    location = var.new_location
  
}

resource "azurerm_resource_group" "list_exaple3" {
for_each = toset(var.shyam)
    name     = each.value
    location = var.new_location
  
}