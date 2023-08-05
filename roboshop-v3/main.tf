module "components" {
  for_each = var.components
  source = "./module"
  instance_type = each.value["instance_type"]
  name = each.value["name"]
  zone_id = var.zone_id
  security_group = var.security_group
}