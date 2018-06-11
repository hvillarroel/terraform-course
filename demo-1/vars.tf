variable "AWS_REGION" {
  default = "us-east-1"
}

variable "AMIS" {
  type = "map"

  default = {
    us-east-1 = "ami-c5cf55ba"
    us-west-1 = "ami-7c938b1c"
  }
}
