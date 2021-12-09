resource "aws_instance" "ec2_training" {  
  ami                             = "ami-0ed9277fb7eb570c9"  
  instance_type                   = "t2.nano"
  associate_public_ip_address     = ""
  
  tags = {    
    Name    = "ExampleEC2"
    Owner   = "Malick"
  }
}
