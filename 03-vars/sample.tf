#Plain Variable
variable "fruit_name" {
  default = "apple"
}

output "fruit_name" {
  value = var.fruit_name
}

#List Variable
variable "fruits" {
  default = [ "apple", "mango", "banana" ]
}
#Access a list variable, List index starts from zero
output "fruits_first" {
  value = var.fruits[0]
}

output "fruits_second" {
  value = var.fruits[1]
}

output "fruits_third" {
  value = var.fruits[2]
}

#Map Variable, Plain
variable "fruit_stock" {
  default = {
    apple = 100
    banana = 200
  }
}
#Access a map variable
output "fruit_stock_apple" {
  value = var.fruit_stock["apple"]
}

output "fruit_stock_banana" {
  value = var.fruit_stock["banana"]
}

#Map Variable, Map of Maps
variable "fruit_stock_with_price" {
  default = {
    apple = {
      stock = 100
      price = 5
    }
    banana = {
      stock = 200
      price = 1.5
    }
  }
}

output "fruit_stock_with_price_apple" {
  value = var.fruit_stock_with_price["apple"].stock
}

output "fruit_stock_with_price_banana" {
  value = var.fruit_stock_with_price["banana"].stock
}

