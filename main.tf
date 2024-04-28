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

module "cloudflare" {
  source = "./modules/cloudflare"

  cloudflare_domain  = var.cloudflare_domain
  cloudflare_zone_id = var.cloudflare_zone_id
  ec2_public_ip      = module.aws_ghost_instance.aws_ghost_instance_ip
}