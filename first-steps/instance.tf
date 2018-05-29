provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "DEFAULT"
  region                  = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-a4dc46db"
  instance_type = "t2.micro"
}
