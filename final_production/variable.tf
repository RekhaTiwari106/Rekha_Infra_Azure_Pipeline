variable "resource_group_name" {
  type = map(object({
    name     = string # This is the required field
    location = string
  }))
}
variable "sg_group_name" {
  description = "A map of configurations for multiple Azure Storage Accounts."
  type = map(object({
    storage_account_name = string
    resource_group_name  = string
    location             = string
  }))
}