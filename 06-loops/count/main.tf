variable "components" {
  default = [ "frontend", "mongodb", "catalogue" ]
}

resource "aws_instance" "instance" {

  count = length(var.components)

  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = element(var.components, count.index)
  }
}

resource "aws_security_group" "allow_tls" {
  count = length(var.components)
  Name = element(var.components, count.index)
}

#Count is least preferred loop in Terraform