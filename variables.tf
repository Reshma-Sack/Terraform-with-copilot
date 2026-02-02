variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "subscription_id" {
    type = string
}

variable "vm_size" {
  description = "VM sizes per VM role"
  type        = map(string)
}
