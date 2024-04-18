variable "region" {
    type = string
    default = "us-east-1"
}

variable "vpc_cidr" {
    type = string
    default = "10.2.0.0/16"
}

variable "subnet1_cidr" {
    type = string
    default = "10.2.1.0/24"
}

variable "subnet2_cidr" {
    type = string
    default = "10.2.3.0/24"
}

variable "subnet3_cidr" {
    type = string
    default = "10.2.3.0/24"
}

variable "rt_cidr" {
    type = string
    default = "0.0.0.0/0"
}

#variable "availabilty_zone_names" {
#   type = list(string)
#    default = ["us-west-1a"]
# }