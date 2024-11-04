variable "environment" {
    description = "The environment for the deployment"
    type        = string
}

variable "location" {
    description = "The location for the deployment"
    type        = string
}


variable "subscription_id" {
    description = "The subscription ID for the deployment"
    type        = string
}

variable "namespace-environment" {
    description = "The environment for the deployment"
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