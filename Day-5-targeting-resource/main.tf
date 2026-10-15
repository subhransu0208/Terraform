# Create VPC
resource "aws_vpc" "dev_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "dev-vpc"
  }
}

# Create Subnet
resource "aws_subnet" "dev_subnet" {
  vpc_id                  = aws_vpc.dev_vpc.id
  cidr_block              = "10.0.1.0/24"
  tags = {
    Name = "dev-subnet"
  }
}

# Create EC2 Instance
resource "aws_instance" "dev" {
  ami           = "ami-0cede6fe40e6ac719"
  instance_type = "t3.small"
  subnet_id     = aws_subnet.dev_subnet.id

  tags = {
    Name = "sekhar"
  }

}



#terraform plan -target=aws_vpc.dev_vpc  this means it will only planned for vpc not subnet and instance
#terraform apply -target=aws_vpc.dev_vpc  means only vpc will be created no instance and subnet still you don't run target command in subnet or instance 
#if you run simply tf plan and tf apply without target command terraform planned for evryone and create each resoureces