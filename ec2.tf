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
  
  ##VPC  ##Subnet (If you specify subnet its enough no need to specify VPC)
  subnet_id     = "subnet-0fef6a3c3e3b85ed7"
  ##Auto Assign Public IP enabled by default

  ##Assign Security Group
  security_groups = ["sg-0f9f48708ec9860da"]
  tags = {
    Name = "MicroserviceTestServer"
    User = "Sandeep Khandekar"
  }
}

