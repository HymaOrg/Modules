module "s3" {
  source = "./s3"
  bucket_name = var.bucket
}

module "iam" {
  source = "./iam"
  role = var.role_name
  depends_on = [module.s3]
}

module "vpc" {
  source = "./vpc"
  cidr = var.cidr  
  public_subnet_cidr = var.public_subnet_cidr
} 


module "ec2" {
  source = "./ec2"
subnet_id = module.vpc.public_subnet_id
instance_type = "t2.micro"
ami_id = "ami-0e4fd655fb4e26c30"
roleattach = module.iam.roleattach
}