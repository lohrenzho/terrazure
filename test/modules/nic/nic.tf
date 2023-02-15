resource "azurerm_network_interface" "nic1_name" {
  name                = "nic1" #var.nic1-name
  location            = "west us" #var.location
  resource_group_name = azurerm_resource_group.test_grp.name #var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1_name.id
    private_ip_address_allocation = "Dynamic"
  }
  depends_on = [
    azurerm_virtual_network.test_vnet
  ]
}

resource "azurerm_network_interface" "nic2_name" {
  name                = "nic2"
  location            = "west us" #var.location
  resource_group_name = azurerm_resource_group.test_grp.name #var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet2_name.id
    private_ip_address_allocation = "Dynamic"
  }

  depends_on = [
    azurerm_virtual_network.test_vnet
  ]
}