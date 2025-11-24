variable "resource_group_name" {
  type        = string
  description = "Name of the Resource Group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "storage_account_name" {
  type        = string
  description = "Name for the Storage Account"
}

variable "container_name" {
  type        = string
  description = "Name of the blob container"
}
