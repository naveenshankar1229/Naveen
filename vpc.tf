resource "aws_vpc" "naveen" {
    cidr_block = "10.60.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "navien-vpc"
    }
  
}

resource "aws_internet_gateway" "bheem" {
    vpc_id = aws_vpc.naveen.id
    tags = {
        Name = "navien-igw"
    }
  
}