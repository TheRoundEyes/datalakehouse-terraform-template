module "resource_group" {
  source = "./modules/resource-group"
  name = "${var.namespace-environment}-datalakehouse-rg"
  location = var.location
  tags = {
    Environment = var.environment
  }
}

module "databricks" {
  source = "./modules/databricks"
  name = "${var.namespace-environment}-datalakehouse-databricks"
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
  tags = {
    Environment = var.environment

  }
}


module "storage-account" {
    source = "./modules/storage-account"
    name = "${var.namespace-environment}datalakestorage"
    location = module.resource_group.location
    resource_group_name = module.resource_group.name
    tags = {
        Environment = var.environment
    }

}

module "storage-data-lake-gen2-filesystem" {
    source = "./modules/azure-storage-datalake-gen2-filesystem"
    name = "${var.namespace-environment}-datalakehouse-storage"
    storage_account_name = module.storage-account.storage-account-name
    resource_group_name = module.resource_group.name
    storage_account_id = module.storage-account.storage-account-id
    location = module.resource_group.location
    tags = {
        Environment = var.environment
    }
}

module "synapse-workspace" {
  source = "./modules/synapse-workspace"
  name = "${var.namespace-environment}-datalakehouse-synapse"
  location = module.resource_group.location
  resource_group_name = module.resource_group.name
  synapse_sql_password = var.synapse_sql_password
  synapse_sql_user = var.synapse_sql_user
  synapse_storage_data_lake_gen2_id = module.storage-data-lake-gen2-filesystem.adls_gen2_filesystem_id
  tags = {
        Environment = var.environment

      }

}
