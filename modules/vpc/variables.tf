variable "region" {
  type = string
}

variable "vpc_id" {
    type = string
  
}
variable "my_vpc_name" {
    type = string
  
}

variable "aws_subnet_cidr" {
    type = list(string)
  
}

variable "availability_zone" {
    type = list(string)
  
}
variable "subnet_name" {
    type = list(string)
  
}