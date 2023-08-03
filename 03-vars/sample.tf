variable "fruit_name" {
  default = [ "apple", "mango", "banana" ]
}

output "fruit_name" {
  value = var.fruit_name
}