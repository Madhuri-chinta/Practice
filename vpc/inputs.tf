variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "vpcs" {
    type = object({
      cidr_block = list(string) 
      Name = list(string)
    })
    default = {
      cidr_block = [ "10.0.0.0/16","192.168.0.0/16" ]
      Name = [ "vpc1","vpc2" ]
    }
}
variable "vpc1-info" {
  type = object({
    subnet-names = list(string) 
    subnet-azs = list(string)
    subnet-cidrblocks = list(string)
  })
  default = {
    subnet-names = ["vpc1-subnet1", "vpc1-subnet2", "vpc1-subnet3"]
    subnet-azs = [ "a", "b", "c"]
    subnet-cidrblocks = [ "10.0.0.0/24", "10.0.1.0/24", "10.0.2.0/24"]
  }
}
variable "vpc2-info" {
  type = object({
    subnet-names = list(string) 
    subnet-azs = list(string)
    subnet-cidrblocks = list(string)
  })
  default = {
    subnet-names = ["vpc2-subnet1", "vpc2-subnet2", "vpc2-subnet3"]
    subnet-cidrblocks = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
    subnet-azs = [ "a", "b", "c" ]
  }
}
