resource "aws_route_table" "naveen-rt" {
    vpc_id = aws_vpc.naveen.id
    route {
        gateway_id = aws_internet_gateway.bheem.id
        cidr_block = "0.0.0.0/0"
    }
  tags = {
    "Name" = "shankar-rt"
  }
}

resource "aws_route_table_association" "public1" {
    route_table_id = aws_route_table.naveen-rt.id
    subnet_id = aws_subnet.publicsubnet1.id

  
}

resource "aws_route_table_association" "public2" {
    route_table_id = aws_route_table.naveen-rt.id
    subnet_id = aws_subnet.publicsubnet2.id

  
}

resource "aws_route_table_association" "public3" {
    route_table_id = aws_route_table.naveen-rt.id
    subnet_id = aws_subnet.publicsubnet3.id

  
}