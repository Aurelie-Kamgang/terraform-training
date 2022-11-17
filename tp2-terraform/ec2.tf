provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAW4RZZMIVXS6Y23FM"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-00e87074e52e6c9f9"
  instance_type = "t2.micro"
  key_name      = "devops-aurelie"
  tags = {
    Name = "ec2-aurelie"
  }
  root_block_device {
    delete_on_termination = true
  }
}

