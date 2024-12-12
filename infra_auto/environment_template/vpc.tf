module "vpc_main" {
  source              = "../../modules/vpc"
  count               = var.vpc_main_enable_module ? 1 : 0
  name                = var.vpc_main_name
  vpc_cidr            = var.vpc_main_vpc_cidr
  azs                 = var.vpc_main_azs 
  private_subnet_cidr = var.vpc_main_private_subnet_cidr
  public_subnet_cidr  = var.vpc_main_public_subnet_cidr 
}