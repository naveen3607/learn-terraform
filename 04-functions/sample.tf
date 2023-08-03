variable "fruits" {
  default = [ "apple", "mango", "banana" ]
}

output "fruits_first" {
  value = element(var.fruits, 3)
}