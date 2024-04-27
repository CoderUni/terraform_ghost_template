resource "aws_instance" "ghost" {

  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  key_name      = aws_key_pair.ghost.key_name

  vpc_security_group_ids = [aws_security_group.ghost.id]

  root_block_device {
    delete_on_termination = true
    volume_size           = var.aws_instance_volume_size
    volume_type           = var.aws_instance_volume_type
  }

  tags = {
    "Name" = "ghost-blog-instance"
  }
}

resource "aws_key_pair" "ghost" {
  key_name   = "ghost-instance-key"
  public_key = var.aws_instance_public_key
}

resource "aws_security_group" "ghost" {
  name = "ghost-blog-sg"

  description = "Ghost blog instance security group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
