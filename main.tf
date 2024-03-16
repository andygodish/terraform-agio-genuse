module "resourcegroup" {
  source  = "app.terraform.io/andygio/resourcegroup/azure"
  version = "1.0.1"
  
  app_env = var.app_env
}