region = "us-east-1"
vpcs = {
  cidr_block = [ "10.1.0.0/16","192.169.0.0/16" ]
  Name = [ "sweety","neelu" ]
}
vpc1-info = {
  subnet-azs = [ "a","b","c" ]
  subnet-cidrblocks = ["10.1.0.0/24", "10.1.1.0/24", "10.1.2.0/24"]
  subnet-names = [ "sweety-subnet1","sweety-subnet2","sweety-subnet3" ]
}
vpc2-info = {
  subnet-azs = [ "a","b","c" ]
  subnet-cidrblocks = ["192.169.0.0/24", "192.169.1.0/24", "192.169.2.0/24"]
  subnet-names = [ "neelu-subnet1","neelu-subnet2","neelu-subnet3" ]
}
