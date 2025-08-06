resource aws_launch_configuration "example" {
  name          = "example-launch-configuration"
  image_id      = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  security_groups = [aws_security_group.first_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World!" > /var/www/html/index.html
              systemctl start httpd
              systemctl enable httpd
              EOF
}   