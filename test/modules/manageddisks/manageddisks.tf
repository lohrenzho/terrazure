## CREATE MANAGED DISKS FOR ADDITIONAL DATA DISKS 
# resource "azurerm_managed_disk" "test_md" {
#   name                 = "sql-server-managed-disk1"
#   location             = var.location
#   resource_group_name  = azurerm_resource_group.test_grp.name #var.resource_group_name
#   storage_account_type = "Standard_LRS"
#   create_option        = "Empty"
#   disk_size_gb         = 10
#    count = 3
# }

# ## CREATE DATA DISK ATTACHMENT FOR SQL SERVER VM
# resource "azurerm_virtual_machine_data_disk_attachment" "test_dda" {
#   managed_disk_id    = azurerm_managed_disk.test_md.id
#   count_managed_disk    = azurerm_managed_disk.test_md.${count.index}
#   virtual_machine_id = azurerm_windows_virtual_machine.vm1.id
#   lun                = "0"
#   caching            = "ReadWrite"
# }