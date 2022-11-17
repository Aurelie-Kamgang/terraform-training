provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAW4RZZMIVXS6Y23FM"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket     = "terraform-backend-aurelie"
    key        = "aurelie.tfstate"
    region     = "us-east-1"
    access_key = "AKIAW4RZZMIVXS6Y23FM"
    secret_key = "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"
  }
}

module "ec2" {
  source = "../modules/ec2module"
    instancetype = "t2.nano"
  aws_common_tag = {
    Name = "ec2-dev-aurelie"
  }
  sg_name = "dev-aurelie-sg"
}

