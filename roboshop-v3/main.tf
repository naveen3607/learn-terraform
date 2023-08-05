module "components" {
  source = "./module"
  instance_type = var.instance_type
  name = var.name
  zone_id = var.zone_id
  security_group = var.security_group
}