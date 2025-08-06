output "public_ip" {

 value = aws_instance.example.public_ip
 description = "The public ip of web server instance"

}