variable "name" {
    description = "The name of the resource group"
    type        = string
}

variable "tags" {
    description = "A map of tags to add to all resources"
    type        = map(string)
}

variable "location" {
    description = "The location for the resource group"
    type        = string
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "synapse_sql_user" {
    description = "The SQL user for the Synapse Workspace"
    type        = string
}
variable "synapse_sql_password" {
    description = "The SQL password for the Synapse Workspace"
    type        = string
}

variable "synapse_storage_data_lake_gen2_id" {
    description = "The ID of the Data Lake Gen2 storage account"
    type        = string
}