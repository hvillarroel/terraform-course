variable "PATH_TO_PRIVATE_KEY" {
  default = "../test-terraform"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "../test-terraform.pub"
}

variable "AWS_REGION" {
  default = "us-west-1"
}

variable "AMIS" {
  type = "map"

  default = {
    us-east-1 = "ami-c5cf55ba"
    us-west-1 = "ami-ea34d089"
  }
}
