data "aws_ami_ids" "ami" {
  name_regex  = "Centos-8"
  owners      = ["973714476881"]
}

output "ami" {
  value = data.aws_ami_ids.ami
}