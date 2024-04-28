variable "cloudflare_domain" {
  type        = string
  description = "The domain to use for the Cloudflare DNS record"
}

variable "cloudflare_zone_id" {
  type        = string
  description = "The zone ID of the Cloudflare account"
}

variable "ec2_public_ip"{
    type        = string
    description = "The public IP address of the created EC2 instance"
}