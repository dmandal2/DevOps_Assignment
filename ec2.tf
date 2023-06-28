module "ec2_instance_bastion" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                   = "Bastion"
  instance_type          = "t2.micro"
  key_name               = "assignment"
  monitoring             = true
  vpc_security_group_ids = [module.bastion_service_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  ami = "ami-053b0d53c279acc90"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance_jenkins" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                   = "Jenkins"
  instance_type          = "t2.micro"
  key_name               = "assignment"
  monitoring             = true
  vpc_security_group_ids = [module.jenkins_service_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  ami = "ami-053b0d53c279acc90"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

module "ec2_instance_app" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name                   = "app"
  instance_type          = "t2.micro"
  key_name               = "assignment"
  monitoring             = true
  vpc_security_group_ids = [module.jenkins_service_sg.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]
  associate_public_ip_address = true
  ami = "ami-053b0d53c279acc90"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
