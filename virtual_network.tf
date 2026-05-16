resource "azurerm_virtual_network" "vntest1"{
  name                = "deepu_vnet1"
  location            = azurerm_resource_group.daksh.location
  resource_group_name = azurerm_resource_group.daksh.name
  address_space       = ["192.168.0.0/16"]
  dns_servers         = ["192.168.0.4", "192.168.0.5"]

  subnet {
    name             = "subnetfront1"
    address_prefixes = ["192.168.1.0/24"]
  }

  subnet {
    name             = "subnetback1"
    address_prefixes = ["192.168.2.0/24"]
    # security_group   = azurerm_network_security_group.backend_nsg.id
  }

}