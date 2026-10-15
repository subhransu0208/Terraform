resource "aws_instance" "my-instance" {
    ami = "ami-0cede6fe40e6ac719"
    instance_type = "t3.micro"
    tags = {
      Name="dev"
    }
}

resource "aws_s3_bucket" "my-bucket" {
    bucket = "dev-unique-bucket-2026"
  
}