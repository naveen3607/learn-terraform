module "test" {
  source = "./local_module"
}

output "test" {
  value = module.test
}