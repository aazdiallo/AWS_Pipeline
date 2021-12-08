variable "access_key" {
    default = "AKIA3VZ5IJCPQXVOYRA7"
}

variable "secret_key" {
    default = "6PUQI8ruIbkf07UQ1gGh0tv/mztdGF7B9ohI1P+Y"
}

variable "region" {
    default = "us-east-1"
    type    = string
}

variable "vpc-cidr" {
  default       = "10.0.0.0/16"
  description   = "VPC CIDR Block"
  type          = string
}

variable "public-subnet-cidr" {
  default       = "10.0.0.0/24"
  description   = "Public Subnet CIDR Block"
  type          = string
}

variable "private-subnet-cidr" {
  default       = "10.0.2.0/24"
  description   = "Private Subnet CIDR Block"
  type          = string
}
