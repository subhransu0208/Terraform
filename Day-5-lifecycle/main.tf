resource "aws_instance" "dev" {
    ami = "ami-0d5beb611c244cba5"
    instance_type = "t3.small"
    tags = {
        Name = "sekhar"
    }

  
  
#lifecycle {
#   ignore_changes = [tags]
#   }
#lifecycle {
#  create_before_destroy = true
#}

# lifecycle {
#   prevent_destroy = true
# }
}