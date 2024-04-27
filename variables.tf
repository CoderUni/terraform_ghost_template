variable "aws_ami" {
  type        = string
  description = "The AMI ID to use for the EC2 instance"
}

variable "aws_instance_type" {
  type        = string
  description = "The instance type to use for the EC2 instance"
}

variable "aws_instance_volume_size" {
  type        = number
  description = "The size of the root volume in GB"
}

variable "aws_instance_volume_type" {
  type        = string
  description = "The type of the root volume"
}

variable "aws_instance_public_key" {
  type        = string
  description = "The public key to use for the EC2 instance"
}