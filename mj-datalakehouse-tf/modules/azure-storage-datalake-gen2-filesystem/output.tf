output "adls_gen2_filesystem_name" {
  description = "The name of the ADLS Gen2 Filesystem"
  value       = try(azurerm_storage_data_lake_gen2_filesystem.default.name, null)
}

output "adls_gen2_filesystem_id" {
  description = "The ID of the ADLS Gen2 Filesystem"
  value       = try(azurerm_storage_data_lake_gen2_filesystem.default.id, null)
}