provider "aws" {
  region = "us-east-1"
}

module "control_tower" {
  source = "terraform-aws-modules/control-tower/aws"
  # ...existing code...
}
