resource "azurerm_resource_group" "test_grp" {
  name     = var.resource_group_name
  location = var.location
}