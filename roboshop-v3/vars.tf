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
      name = "frontend-dev"
    }
    catalogue = {
      name = "catalogue-dev"
    }
    mongodb = {
      name = "mongodb-dev"
    }
    redis = {
      name = "redis-dev"
    }
    user = {
      name = "user-dev"
    }
    cart = {
      name = "cart-dev"
    }
    mysql = {
      name = "mysql-dev"
    }
    shipping = {
      name = "shipping-dev"
    }
    rabbitmq = {
      name = "rabbitmq-dev"
    }
    payment = {
      name = "payment-dev"
    }
    dispatch = {
      name = "dispatch-dev"
    }
  }
}