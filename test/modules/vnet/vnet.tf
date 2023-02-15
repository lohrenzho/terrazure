resource "azurerm_virtual_network" "test_vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = "zho_testRG" #"./modules/resourcegrp" #
  address_space       = var.vnet_prefix
 
  tags = {
    environment = "Test" #var.tags
  }

}