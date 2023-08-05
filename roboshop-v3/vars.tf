variable "security_group" {
  default = [ "sg-094473d55ab4bd85d" ]
}

variable "zone_id" {
  default = "Z06537442IUXZV0J4PKFE"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "components" {
  default = {
    frontend = {
      name = "frontend"
    }
    catalogue = {
      name = "catalogue"
    }
    mongodb = {
      name = "mongodb"
    }
    redis = {
      name = "redis"
    }
    user = {
      name = "user"
    }
    cart = {
      name = "cart"
    }
    mysql = {
      name = "mysql"
    }
    shipping = {
      name = "shipping"
    }
    rabbitmq = {
      name = "rabbitmq"
    }
    payment = {
      name = "payment"
    }
    dispatch = {
      name = "dispatch"
    }
  }
}