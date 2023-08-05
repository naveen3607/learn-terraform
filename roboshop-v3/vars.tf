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
  }
}