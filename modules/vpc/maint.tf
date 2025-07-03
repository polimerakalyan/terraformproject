provider "aws" {
    region = var.region
  
}

resource "aws_vpc" "my_vpc" {
    cidr_block = var.vpc_id
    tags = {
      Name = var.my_vpc_name
    }
  
}
resource "aws_subnet" "subnets"{
    count = 4
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = var.aws_subnet_cidr[count.index]
    availability_zone = var.availability_zone[count.index]
    tags = {
      Name = var.subnet_name[count.index]
    }
    depends_on = [ aws_vpc.my_vpc ]
  
}