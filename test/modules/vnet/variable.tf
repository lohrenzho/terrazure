variable "vnet_name" {
     type = string
     default = "Core-Test-Vnet"
}

variable "location" {
     type = string
     default = "west us"
}

variable "vnet_prefix" {
   type = list(string)
   default = ["10.7.0.0/16"]
}