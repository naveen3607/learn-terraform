variable "components" {
  default = {
    catalogue = {name = "catalogue_dev"}
    frontend = {name = "frontend_dev"}
    mongodb = {name = "mongodb_dev"}
  }
}

resource "aws_instance" "instance" {

  for_each = var.components

  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    name = lookup(var.components, each.value["name"], null)
  }
}

resource "aws_security_group" "allow_tls" {
  for_each = var.components
  name = lookup(var.components, each.value["name"], null)
}