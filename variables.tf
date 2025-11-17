variable "owner" {
  description = "Owner of the resources"
  type        = string
  default     = "manikant"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "terraform-cicd"
}

variable "environment" {
  description = "Environment name (e.g., dev, prod)"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0c02fb55b34c4b0e4"  # Amazon Linux 2023 AMI in us-east-1
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
