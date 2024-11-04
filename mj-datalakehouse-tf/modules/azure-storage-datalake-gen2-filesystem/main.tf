resource "azurerm_storage_data_lake_gen2_filesystem" "default" {
  name                 = var.name
  storage_account_id   = var.storage_account_id
}