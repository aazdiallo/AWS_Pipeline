# Create VPC
# terraform aws create vpc
resource "aws_vpc" "vpc_training" {
  cidr_block              = var.vpc-cidr
  instance_tenancy        = "default"
  enable_dns_hostnames    = true

  tags      = {
    Name    = "Training VPC"
  }
}

# Create Internet Gateway and Attach it to VPC
# terraform aws create internet gateway
resource "aws_internet_gateway" "internet-gateway" {
  vpc_id    = aws_vpc.vpc_training.id

  tags      = {
    Name    = "Traing IGW"
  }
}

# Create Public Subnet
# terraform aws create subnet
resource "aws_subnet" "public-subnet" {
  vpc_id                  = aws_vpc.vpc_training.id
  cidr_block              = var.public-subnet-cidr
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags      = {
    Name    = "Public Subnet"
  }
}

# Create Route Table and Add Public Route
# terraform aws create route table
resource "aws_route_table" "public-route-table" {
  vpc_id       = aws_vpc.vpc_training.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags       = {
    Name     = "Public Route Table"
  }
}

# Associate Public Subnet to "Public Route Table"
# terraform aws associate subnet with route table
resource "aws_route_table_association" "public-subnet-route-table-association" {
  subnet_id           = aws_subnet.public-subnet.id
  route_table_id      = aws_route_table.public-route-table.id
}

# Create Private Subnet
# terraform aws create subnet
resource "aws_subnet" "private-subnet" {
  vpc_id                   = aws_vpc.vpc_training.id
  cidr_block               = "var.private-subnet-cidr
  availability_zone        = "us-east-1a"
  map_public_ip_on_launch  = false

  tags      = {
    Name    = "Private Subnet"
  }
}
