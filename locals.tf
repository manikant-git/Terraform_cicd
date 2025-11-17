locals {
  owner        = var.owner
  project_name = var.project_name
  environment  = var.environment

  common_tags = {
    Owner        = var.owner
    Project      = var.project_name
    Environment  = var.environment
  }
}

