variable instancetype {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}

variable aws_common_tag {
  type        = map
  description = "set aws instance tag"
  default = {
    Name = "ec2-ibass"
  }
}
