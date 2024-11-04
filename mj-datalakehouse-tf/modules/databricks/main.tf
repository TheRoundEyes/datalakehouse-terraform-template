resource "azurerm_databricks_workspace" "default"{
  name =  var.name
  sku = "premium"
  resource_group_name = var.resource_group_name
  location = var.location
}