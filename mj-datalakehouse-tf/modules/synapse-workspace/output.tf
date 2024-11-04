output "synapse_workspace_name" {
  description = "The name of the Synapse Workspace"
  value       = try(azurerm_synapse_workspace.default.name, null)
}

output "synapse_workspace_id" {
  description = "The ID of the Synapse Workspace"
  value       = try(azurerm_synapse_workspace.default.id, null)
}