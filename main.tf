module "resourcegroup" {
  source  = "app.terraform.io/andygio/resourcegroup/azure"
  version = "1.0.2"

  app_env    = var.app_env
  app_prefix = var.app_prefix
  location   = var.location
  sub_prefix = var.sub_prefix
  tags       = var.tags
}
