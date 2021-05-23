provider "aws" {
  region  = "us-east-1"
}

module "ec2" {
  source                        = "git@github.com:Accenture-Dev-private/module_ec2.git"
# source                        = "git@github.com:Accenture-Dev/module_ec2?ref=CloudStartKit"
  instance_count = 2
  image_id = "ami-0885b1f6bd170450c"
  name = ""
  srvcountry = "BR"
  srvclient = "Accenture-CloudStartKit-PUB1"
  srvproduct = ""
  srvrole = ""
  srvenvironment = "production"
  instance_type = "t2.micro"
#  user_data = "heldouser0.1"
  enable_ssm = true
  key_name = "new_key"
  iam_instance_profile = "SMrole"
  subnet_id = "subnet-039fd9836be0de678"
  vpc_security_group_ids = "sg-0f4c6a9de4fd3d7bc"
  monitoring = true
  user_data = <<-EOF
              #!/bin/bash
              apt-get install nginx -y
              echo "Welcome to First!" > /var/www/html/index.html
              apt-get update -y
              service nginx start
              EOF
              
}