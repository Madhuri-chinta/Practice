resource "aws_vpc" "vpcs" {
  count = length(var.vpcs.Name)
  cidr_block       = var.vpcs.cidr_block[count.index]
  instance_tenancy = "default"
  tags = {
    Name = var.vpcs.Name[count.index]
  }
}
resource "aws_subnet" "vpc1-subnets" {
  count = length(var.vpc1-info.subnet-names)
  cidr_block = var.vpc1-info.subnet-cidrblocks[count.index]
  availability_zone = "${var.region}${var.vpc1-info.subnet-azs[count.index]}"
  vpc_id = aws_vpc.vpcs[0].id
  depends_on = [ 
    aws_vpc.vpcs[0]
  ]
  tags = {
    Name = var.vpc1-info.subnet-names[count.index]
  }
}
resource "aws_subnet" "vpc2-subnets" {
  count = length(var.vpc2-info.subnet-names)
  cidr_block = var.vpc2-info.subnet-cidrblocks[count.index]
  availability_zone = "${var.region}${var.vpc2-info.subnet-azs[count.index]}"
  vpc_id = aws_vpc.vpcs[1].id
  depends_on = [ 
    aws_vpc.vpcs[1]
  ]
  tags = {
    Name = var.vpc2-info.subnet-names[count.index]
  }
}
