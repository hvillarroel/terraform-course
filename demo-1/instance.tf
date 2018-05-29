resource "aws_instance" "example" {
  ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type = "t2.micro"
  subnet_id     = "${aws_subnet.test1_subnet.id}"
}

resource "aws_vpc" "test1_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags {
    Name = "main"
  }
}

resource "aws_subnet" "test1_subnet" {
  vpc_id     = "${aws_vpc.test1_vpc.id}"
  cidr_block = "10.0.1.0/24"

  tags {
    Name = "Main"
  }
}
