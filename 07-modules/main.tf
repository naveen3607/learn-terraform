module "test" {
  source = "./local_module"
  instance_type = var.instance_type
}

output "test" {
  value = module.test
}

variable "instance_type" {
  default = "t2.micro"
}