resource "aws_instance" "app_server" {  
  ami             = "ami-0ed9277fb7eb570c9"  
  instance_type   = "t2.nano"
  
  tags = {    
    Name    = "ExampleEC2"
    Owner   = "Malick"
  }
}
