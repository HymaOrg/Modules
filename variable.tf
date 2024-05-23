variable "bucket" { 
    type = string
    default = ""
}


variable "role_name" {
  type    = string
  description = "The name of the role to be created."
}

variable "cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  type        = string
}
