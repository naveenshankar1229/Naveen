resource "aws_subnet" "publicsubnet1" {
  vpc_id = aws_vpc.naveen.id
  cidr_block = "10.60.1.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "publicsubnet1"
  }

}

resource "aws_subnet" "publicsubnet2" {
  vpc_id = aws_vpc.naveen.id
  cidr_block = "10.60.2.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "publicsubnet2"
  }

}


resource "aws_subnet" "publicsubnet3" {
  vpc_id = aws_vpc.naveen.id
  cidr_block = "10.60.3.0/24"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = true
  tags = {
    "Name" = "publicsubnet3"
  }

} 