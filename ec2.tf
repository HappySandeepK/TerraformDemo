terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}
resource "aws_instance" "MicroserviceTestServer" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  ##Availability Zone
  availability_zone = "us-east-1d"
  ##keypair Name
  key_name = "TestAccount"
  
  ##VPC  ##Subnet
  subnet_id     = "subnet-0fef6a3c3e3b85ed7"


  ##Assign Public IP

  ##Assign Security Group
  
  tags = {
    Name = "MicroserviceTestServer"
  }
}
