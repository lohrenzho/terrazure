resource "azurerm_subnet" "subnet1_name" {
  name                 = "Core_Test_SQL_Subnet"
  resource_group_name  = "zho_testRG" #azurerm_resource_group.test_grp.name
  virtual_network_name = "Core-Test-Vnet" #azurerm_virtual_network.test_vnet.name #var.vnet_name
  address_prefixes     = ["10.7.0.0/24"] #var.subnet1_prefix

}

resource "azurerm_subnet" "subnet2_name" {
  name                 = "Core_Test_App_Subnet"
  resource_group_name  = "zho_testRG" #azurerm_resource_group.test_grp.name #var.resource_group_name
  virtual_network_name = "Core-Test-Vnet" #azurerm_virtual_network.test_vnet.name #var.vnet_name
  address_prefixes     = ["10.7.1.0/24"] #var.subnet2_prefix

}