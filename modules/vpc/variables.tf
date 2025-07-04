variable "region" {
  type = string
  default ="us-east-1"
}

variable "vpc_id" {
    type = string
    default ="10.0.0.0/16"
  
}
variable "my_vpc_name" {
    type = string
    default ="my_vpc"
}

variable "aws_subnet_cidr" {
    type = list(string)
    default =["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
}

variable "availability_zone" {
    type = list(string)
    default =["us-east-1a","us-east-1b","us-east-1c","us-east-1d"]
}
variable "subnet_name" {
    type = list(string)
    default =["subnet1","subnet2","subnet3","subnet4"]
}
