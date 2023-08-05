data "aws_ami" "ami" {
  name_regex  = "Centos-8-DevOps-Practice"
  owners      = ["973714476881"]
}

output "ami" {
  value = data.aws_ami.ami.id
}

resource "aws_instance" "instance" {
  ami = data.aws_ami.ami.id
  instance_type = var.instance_type
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]
}

variable "instance_type" {}