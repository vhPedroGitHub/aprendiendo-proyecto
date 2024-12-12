output "private_subnets" {
  value = var.vpc_main_enable_module ? module.vpc_main[0].private_subnet_ids : null
}

output "public_subnets" {
  value = var.vpc_main_enable_module ? module.vpc_main[0].public_subnet_ids : null
}

output "vpc_id" {
  value = var.vpc_main_enable_module ? module.vpc_main[0].vpc_id : null
}