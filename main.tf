terraform {
  cloud {
    organization = "CoderUni"
    workspaces {
      name = "Personal_Blog"
    }
  }
}

module "aws_ghost_instance" {
  source = "./modules/aws/ghost-instance"

  aws_ami                  = var.aws_ami
  aws_instance_type        = var.aws_instance_type
  aws_instance_volume_size = var.aws_instance_volume_size
  aws_instance_volume_type = var.aws_instance_volume_type
  aws_instance_public_key  = var.aws_instance_public_key
}