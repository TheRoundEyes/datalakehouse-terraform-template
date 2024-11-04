resource "azurerm_synapse_workspace" "default" {
    name = var.name
    location = var.location
    resource_group_name = var.resource_group_name
    storage_data_lake_gen2_filesystem_id = var.synapse_storage_data_lake_gen2_id
    sql_administrator_login = var.synapse_sql_user
    sql_administrator_login_password = var.synapse_sql_password
    tags = var.tags
    managed_virtual_network_enabled = "true"
    identity {
        type = "SystemAssigned"
    }
}

resource "azurerm_synapse_firewall_rule" "default" {
    name                 = "Firewall Rule Name Here"
    start_ip_address     = "IP Here"
    end_ip_address       = "IP Here"
    synapse_workspace_id = azurerm_synapse_workspace.default.id
}