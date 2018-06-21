provider "aws" {
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "DEFAULT"
  region                  = "${var.AWS_REGION}"
}
