variable "fruits" {
  default = [ "apple", "mango", "banana" ]
}

output "fruits" {
  value = element(var.fruits, 4)
}