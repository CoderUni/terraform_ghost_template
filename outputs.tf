# AWS outputs
output "aws_ghost_instance_ip" {
  value       = module.aws_ghost_instance.aws_ghost_instance_ip
  description = "The public IP of the Ghost instance"
}

output "aws_ghost_instance_arn" {
  value       = module.aws_ghost_instance.aws_ghost_instance_arn
  description = "The ARN of the Ghost instance"
}

output "aws_ghost_instance_id" {
  value       = module.aws_ghost_instance.aws_ghost_instance_id
  description = "The ID of the Ghost instance"
}

output "aws_ghost_instance_root_volume_id" {
  value       = module.aws_ghost_instance.aws_ghost_instance_root_volume_id
  description = "The ID of the Ghost instance root volume"
}

output "aws_ghost_instance_root_volume_device_name" {
  value       = module.aws_ghost_instance.aws_ghost_instance_root_volume_device_name
  description = "The device name of the Ghost instance root volume"
}


output "aws_ghost_instance_security_group_arn" {
  value       = module.aws_ghost_instance.aws_ghost_instance_security_group_arn
  description = "The ARN of the Ghost instance security group"
}

output "aws_ghost_instance_security_group_id" {
  value       = module.aws_ghost_instance.aws_ghost_instance_security_group_id
  description = "The ID of the Ghost instance security group"
}

# Cloudflare outputs
output "cloudflare_root_a_record_metadata" {
  value       = module.cloudflare.cloudflare_root_a_record_metadata
  description = "The metadata of the root A record"
}

output "cloudflare_www_a_record_metadata" {
  value       = module.cloudflare.cloudflare_www_a_record_metadata
  description = "The metadata of the www A record"
}