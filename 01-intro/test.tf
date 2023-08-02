# terraform init - Will understand the code written by user and download necessary provider plugins.
# terraform plan - Will tell the execution plan related to the planning to do when user actually applied.
# terraform apply - Create the resources which are mentioned in the code. If the resource is already available, then TF will not do anything.
# terraform destroy (Not used in companies mostly) - Delete the resources which were been created so far by TF. However TF will not look for code to delete, it will delete created resources by TF.

output "test" {
  value = "Hello World"
}