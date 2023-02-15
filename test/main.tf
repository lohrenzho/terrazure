terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.42.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "1c056fd5-1681-4142-a420-cf53540501b9"
  client_id       = "cf624f16-a01d-46c4-93b9-8c2725fe6490"
  client_secret   = "Irf8Q~o526v2xct2geZgxDZv1PiH_5SPCLJNRbPR"
  tenant_id       = "05d14c64-5054-41e5-b2a4-f220a1415790"
  features {}
}

module "rg_test" {
  source = "./modules/resourcegrp"
}

module "vnet_test" {
  source = "./modules/vnet"
}

module "subnet_test" {
  source = "./modules/subnet"
}


# # ## CREATE  VIRTUAL NETWORK PEEERING
# resource "azurerm_virtual_network_peering" "peering-1" {
#   name                      = "Test-Dev"
#   resource_group_name       = "zho_testRG" #var.resource_group_name
#   virtual_network_name      = "Core-Test-Vnet"
#   remote_virtual_network_id = "/subscriptions/c4f83d6a-ca80-468b-b372-565f768be207/resourceGroups/zho_testRG/providers/Microsoft.Network/virtualNetworks/Core-Test-Vnet"
# }

#  resource "azurerm_virtual_network_peering" "peering-2" {
#    name                      = "Dev-Test"
#    resource_group_name       = "zho_devRG"
#    virtual_network_name      = "Core-Dev-Vnet"
#    remote_virtual_network_id = "/subscriptions/c4f83d6a-ca80-468b-b372-565f768be207/resourceGroups/zho_devRG/providers/Microsoft.Network/virtualNetworks/Core-Dev-Vnet"
# }