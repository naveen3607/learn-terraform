variable "ami" {
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_security_group_ids" {
  default = "sg-094473d55ab4bd85d"
}

variable "zone_id" {
  default = "Z06537442IUXZV0J4PKFE"
}

variable "components" {
  default = {
    frontend  = {}
    mongodb   = {}
    catalogue = {}
    redis     = {}
    user      = {}
    cart      = {}
    mysql     = {}
    shipping  = {}
    rabbitmq  = {}
    payment   = {}
    dispatch  = {}
  }
}

resource "aws_instance" "instance" {
  for_each = var.components
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = lookup(var.components, each.key, null)
  }
}

#resource "aws_route53_record" "frontend" {
#  zone_id = "Z06537442IUXZV0J4PKFE"
#  name    = "frontend-dev.naveen3607.online"
#  type    = "A"
#  ttl     = 30
#  records = [aws_instance.frontend.private_ip]
#}
#}

output "instances" {
  value = aws_instance.instance
}