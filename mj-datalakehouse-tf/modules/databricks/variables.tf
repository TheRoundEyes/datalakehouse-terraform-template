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