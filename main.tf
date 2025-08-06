provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first_instance" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
    

    tags = {

        Name = "FirstInstance"
    }

  
}

resource "aws_security_group" "first_sg" {
    name = "first_sg"
    ingress = {
        from_port   = 8080
        to_port     = 8080
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}