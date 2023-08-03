resource "aws_instance" "frontend" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "01-Frontend"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "frontend-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongodb" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "02-MongoDB"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "mongodb-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "03-Catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "catalogue-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "redis" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "04-Redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "redis-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "user" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "05-User"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "user-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}

resource "aws_instance" "cart" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "06-Cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "cart-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "07-MySQL"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "mysql-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "08-Shipping"
  }
}

resource "aws_route53_record" "shipping" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "shipping-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "09-RabbitMQ"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "rabbitmq-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "10-Payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "payment-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}

resource "aws_instance" "dispatch" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ "sg-094473d55ab4bd85d" ]

  tags = {
    Name = "11-Dispatch"
  }
}

resource "aws_route53_record" "dispatch" {
  zone_id = "Z06537442IUXZV0J4PKFE"
  name    = "dispatch-dev.naveen3607.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.dispatch.private_ip]
}