provider "aws" {
  region  = "us-east-1"
}

module "ec2" {
  source                        = "git@github.com:Accenture-Dev-private/module_ec2.git"
# source                        = "git@github.com:Accenture-Dev/module_ec2?ref=CloudStartKit"
  instance_count = ""
  image_id = ""
  name = ""
  srvcountry = ""
  srvclient = ""
  srvproduct = ""
  srvrole = ""
  srvenvironment = ""
  instance_type = ""
#  user_data = ""
  enable_ssm = 
  key_name = ""
  iam_instance_profile = ""
  subnet_id = ""
  vpc_security_group_ids = ""
  monitoring = ""
  user_data = <<-EOF
              #!/bin/bash
              apt-get install nginx -y
              echo "Welcome to First!" > /var/www/html/index.html
              apt-get update -y
              service nginx start
              EOF
              
}