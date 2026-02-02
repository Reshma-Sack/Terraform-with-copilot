rg_name         = "prod-rg"
location        = "eastus2"
vnet_name       = "prod-vnet"
subnet_name     = "prod-subnet"
vm_name         = "prod-linux-vm"
subscription_id = "363728fa-6639-4fc7-b290-d4a2689d64a3"
vm_size = {
  web = "Standard_D2s_v3"
  app = "Standard_D4s_v3"
  db  = "Standard_E4s_v5"
}
