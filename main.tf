provider "aws" {
  region = "ap-south-1" # Replace with your AWS region
}

resource "aws_instance" "web_server" {
  ami           = "ami-0614680123427b75e" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y httpd
              echo "<h1>Welcome to your Terraform Web Server!</h1>" > /var/www/html/index.html
              sudo systemctl start httpd
              sudo systemctl enable httpd
  EOF

  tags = {
    Name = "TerraformWebServer"
  }
}

resource "aws_security_group" "web_sg" {
  name_prefix = "web-sg"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "WebServerSG"
  }
}

# Attach the security group to the EC2 instance
resource "aws_network_interface_sg_attachment" "web_sg_attachment" {
  security_group_id    = aws_security_group.web_sg.id
  network_interface_id = aws_instance.web_server.primary_network_interface_id
}

