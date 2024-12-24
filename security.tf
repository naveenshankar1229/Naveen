resource "aws_security_group" "naveen-sg" {
    vpc_id = aws_vpc.naveen.id
    description = "allow all rules"
    name = "naveen-sg"
    tags = {
        Name = "naveen-security"
    }
ingress {
    to_port = 0
    from_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
}
egress {
    to_port = 0
    from_port = 0
    protocol = -1
    cidr_blocks = ["0.0.0.0/0"]
}

}