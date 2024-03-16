module "resourcegroup" {
  source  = "app.terraform.io/andygio/resourcegroup/azure"
  version = "1.0.3"

  app_env    = var.app_env
  app_prefix = var.app_prefix
  location   = var.location
  sub_prefix = var.sub_prefix

  tags       = var.tags
}

module "storageaccount" {
  source  = "app.terraform.io/andygio/storageaccount/azure"
  version = "1.0.1"

  resource_group_name = module.resourcegroup.rg_name

  app_env    = var.app_env
  app_prefix = var.app_prefix
  location   = var.location
  sub_prefix = var.sub_prefix
  
  tags       = var.tags
}
