locals {
  default_tags = {
    Part_of_project = var.project_name
    owner           = "PMM"
    Enviromnt       = "Dev"
  }
}