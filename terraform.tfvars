# It's best practice to set the variables in Terraform Cloud instead of here 

# ENVIRONMENT VARIABLES

# Export AWS Credentials instead of setting variables here in plain text

# export AWS_ACCESS_KEY_ID=""
# export AWS_SECRET_ACCESS_KEY=""
# export AWS_DEFAULT_REGION=""

# Export Cloudflare Credentials instead of setting variables here in plain text

# export CLOUDFLARE_API_TOKEN=""

# VARIABLES

# AWS
aws_ami                  = "ami-08941d3c2b3bc1249" # Debian 12 (ap-southeast-1)
aws_instance_type        = "t3.micro"
aws_instance_volume_size = 15
aws_instance_volume_type = "gp2"
aws_instance_public_key  = "" # Replace with the content of your SSH key.pub

# Cloudflare
cloudflare_domain        = "example.com" # Replace with your domain name
cloudflare_zone_id       = "" # The domain's Zone ID can be found here (https://developers.cloudflare.com/fundamentals/setup/find-account-and-zone-ids/)
