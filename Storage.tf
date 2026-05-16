
resource "azurerm_resource_group" "daksh" {
  name     = "rg_test_Practice"
  location = "West Europe"
}

resource "azurerm_storage_account" "deep_storage1" {
  name                     = "storagedeep41${random_string.random1.result}"
  resource_group_name      = azurerm_resource_group.daksh.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "RAGRS"

}

resource "azurerm_storage_account" "deep_storage2" {
  name                     = "storagedeep42${random_string.random1.result}"
  resource_group_name      = azurerm_resource_group.daksh.name
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}

resource "azurerm_storage_account" "deep_storage3" {
  name                     = "storagedeep43${random_string.random1.result}"
  resource_group_name      = azurerm_resource_group.daksh.name
  location                 = azurerm_resource_group.daksh.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}

resource "azurerm_storage_account" "deepu_storage4" {
  depends_on               = [azurerm_resource_group.daksh]
  name                     = "storagedeep44${random_string.random1.result}"
  resource_group_name      = "rg_test_Practice"
  location                 = azurerm_resource_group.daksh.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "deepu_storage9" {
  depends_on               = [azurerm_storage_account.deep_storage1]
  name                     = "storagedeep55${random_string.random1.result}"
  resource_group_name      = "rg_test_Practice"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}


resource "azurerm_storage_account" "deepu_storage66" {
  depends_on               = [azurerm_storage_account.deepu_storage4]
  name                     = "storagedeep466${random_string.random1.result}"
  resource_group_name      = "rg_test_Practice"
  location                 = "westus"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}



resource "random_string" "random1" {
  length  = 3
  special = false
  upper   = false
}


resource "azurerm_storage_account" "deepu_storage690" {
  name                     = "storagedeepak${random_string.random1.result}"
  resource_group_name      = "rg_test_Practice"
  location                 = "east us"
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  depends_on               = [azurerm_resource_group.daksh]

}

resource "azurerm_storage_account" "storagedeepak100" {
  name                     = "storage${random_string.random1.result}"
  resource_group_name      = azurerm_resource_group.daksh.name
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

