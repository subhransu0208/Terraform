output "vpc_region" {
  value = "aws_vpc.dev.region"
}


output "subnet-az" {
  value = "aws_subnet.dev-subnet.availability-zone"

}