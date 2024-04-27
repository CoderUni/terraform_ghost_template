output "aws_ghost_instance_ip" {
  value       = aws_instance.ghost.public_ip
  description = "The public IP of the Ghost instance"
}

output "aws_ghost_instance_arn" {
  value       = aws_instance.ghost.arn
  description = "The ARN of the Ghost instance"
}

output "aws_ghost_instance_id" {
  value       = aws_instance.ghost.id
  description = "The ID of the Ghost instance"
}

output "aws_ghost_instance_root_volume_id" {
  value       = aws_instance.ghost.root_block_device[0].volume_id
  description = "The ID of the Ghost instance root volume"
}

output "aws_ghost_instance_root_volume_device_name" {
  value       = aws_instance.ghost.root_block_device[0].device_name
  description = "The device name of the Ghost instance root volume"
}


output "aws_ghost_instance_security_group_arn" {
  value       = aws_security_group.ghost.arn
  description = "The ARN of the Ghost instance security group"
}

output "aws_ghost_instance_security_group_id" {
  value       = aws_security_group.ghost.id
  description = "The ID of the Ghost instance security group"
}
