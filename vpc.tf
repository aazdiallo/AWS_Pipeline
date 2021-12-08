# Create a VPC
resource "aws_vpc" "ec2_training" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Training VPC"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.ec2_training.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Private Subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.ec2_training.id
  cidr_block = "10.0.0.0/24"

  tags = {
    Name = "Public Subnet"
  }
}

