resource "azurerm_windows_virtual_machine" "vm2" {
  name                = "Core-TestApp01" #var.vm_app_server
  resource_group_name = azurerm_resource_group.test_grp.name #var.resource_group_name
  location            = "west us" #var.location
  size                = "Standard_B8ms" #var.vm_size
  admin_username      = "aomojola"
  admin_password      = "Phil0$0phyakin2023"
  network_interface_ids = [
    azurerm_network_interface.nic2_name.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  depends_on = [
    azurerm_network_interface.nic2_name
  ]
}