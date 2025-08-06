resource "aws_instance" "example" {   
  ami = ami-020cba7c55df1f615
  instance_type = "t2.micro"
  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
              EOF

  user_data_replace_on_change = true
  tags = {
    Name = "webserver1"
  }  
}

