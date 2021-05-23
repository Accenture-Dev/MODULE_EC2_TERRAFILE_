output "ip_address" {
  description = "Lista dos Ips públicos das instâncias"  
  value = module.ec2.ip_address
}

output "private_ip" {
  description = "Lista dos IPs privados das instâncias"  
  value = module.ec2.private_ip
}

#output "ssm_enabled" {
#  description = "Se o AWS SSM Session Manager está habilitado nas instâncias"
#  value = module.ec2.ssm_enabled
#}

output "key_name" {
  description = "key usada para conectar na instância"
  value = module.ec2.key_name
}

output "id" {
  description = "Lista dos IDs das instâncias"
  value       = module.ec2.id
}

output "availability_zone" {
  description = "Lista das AZs das instâncias"
  value       = module.ec2.availability_zone
}