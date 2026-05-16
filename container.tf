resource "azurerm_storage_container" "container21" {
  name                  = "newcontainer"
  storage_account_id    = azurerm_storage_account.deep_storage1.id
  container_access_type = "private"
}


resource "azurerm_storage_container" "container22" {
  name                  = "newcontainer2"
  storage_account_id    = azurerm_storage_account.deep_storage2.id
  container_access_type = "private"
}


resource "azurerm_storage_container" "container23" {
  name                  = "newcontainer3"
  storage_account_id    = azurerm_storage_account.deep_storage3.id
  container_access_type = "private"
}