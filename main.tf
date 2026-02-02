resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  rg_name             = azurerm_resource_group.rg.name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
}

module "vm" {
  source      = "./modules/vm"
  vm_count    = 10
  rg_name     = azurerm_resource_group.rg.name
  location    = var.location
  subnet_id   = module.network.subnet_id
  vm_name     = var.vm_name
  vm_size     = var.vm_size
}
