provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"

  name          = "My Server"
  ami           = "ami-0eb260c4d5475b901"
  instance_type = "t2.micro"

  tags = {
    Name = "My Server"
  }
}
