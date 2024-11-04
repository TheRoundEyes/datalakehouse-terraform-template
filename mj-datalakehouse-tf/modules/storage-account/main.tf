resource "azurerm_storage_account" "default" {

  account_replication_type = "LRS"
  account_tier             = "Standard"
  location                 = var.location
  name                     = var.name
  resource_group_name      = var.resource_group_name
  account_kind = "StorageV2"
  is_hns_enabled = "true"
}