terraform {
  backend "s3" {
    bucket         = "dev-unique-bucket-2026"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    use_lockfile     = true #s3 native locking supported version 1.0.0 and above
    #dynamodb_table = "terraform-state-locks" # any version of terraform supports this
  }
}