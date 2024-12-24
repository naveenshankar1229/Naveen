resource "aws_instance" "public-server" {
    ami = "ami-005fc0f236362e99f"
    instance_type = "t2.micro"
    key_name = "naveen"
    vpc_security_group_ids = [aws_security_group.naveen-sg.id]
    subnet_id = aws_subnet.publicsubnet1.id
    private_ip = "10.60.1.5"
    associate_public_ip_address = true
    user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install apache2 -y
    sudo systemctl start apache2
    EOF

    tags = {
        Name = "naveen-public-server"
    }
}