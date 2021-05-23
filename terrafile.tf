provider "aws" {
  region  = "us-east-2"
}

module "ec2" {
  source                        = "git@github.com:Accenture-Dev-private/module_ec2.git"
# source                        = "git@github.com:Accenture-Dev/module_ec2?ref=CloudStartKit"
  instance_count = 2
  image_id = "ami-08e6b682a466887dd"
  name = ""
  srvcountry = "BR"
  srvclient = "Accenture-CloudStartKit-PUB2"
  srvproduct = ""
  srvrole = ""
  srvenvironment = "production"
  instance_type = "t2.micro"
#  user_data = "heldouser0.1"
  enable_ssm = true
  key_name = "new_key"
  iam_instance_profile = "SMrole"
  subnet_id = "subnet-0c46e7534625b6ffb"
  vpc_security_group_ids = "sg-0f4c6a9de4fd3d7bc"
  monitoring = true
  user_data = <<-EOF
              #!/bin/bash
              apt-get install nginx -y
              echo "Welcome to Second!" > /var/www/html/index.html
              apt-get update -y
              service nginx start
              EOF
              
}