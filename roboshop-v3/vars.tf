variable "security_group" {
  default = [ "sg-094473d55ab4bd85d" ]
}

variable "zone_id" {
  default = "Z06537442IUXZV0J4PKFE"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "name" {
  default = {
    frontend = {
      name = "frontend"
    }
    catalogue = {
      name = "catalogue"
    }
  }
}