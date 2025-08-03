module "RGtest" {
  source   ="../Child/rg"
  for_each = var.resource_group_name
  name     = each.value.name
  location = each.value.location
}

module "Sgtest" {
  source   ="../Child/sg"
  for_each = var.sg_group_name
  storage_account_name = each.value.storage_account_name
  resource_group_name  = each.value.resource_group_name   
  location             = each.value.location
}