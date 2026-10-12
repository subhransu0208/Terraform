resource "aws_vpc" "dev" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "my-vpc"
  }

}

resource "aws_subnet" "dev-subnet" {
  vpc_id     = aws_vpc.dev.id
  cidr_block = var.subnet_cidr
  tags = {
    Name = "pub-subnet"
  }
}