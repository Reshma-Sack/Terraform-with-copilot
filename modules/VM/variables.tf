variable "rg_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  description = "VM sizes per VM role"
  type        = map(string)
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID for VM NIC"
}

variable "vm_count" {
  type    = number
  default = 10
}