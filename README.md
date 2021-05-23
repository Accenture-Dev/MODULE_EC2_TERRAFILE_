### 1. Faça o download do repositório:
https://github.com/Accenture-Dev/MODULE_EC2_TERRAFILE_.git
git@github.com:Accenture-Dev/MODULE_EC2_TERRAFILE_.git

***1.1*** Caso seja uma mudança em uma EC2 já existente:

*1.1.1* Altere para a Branch "create_or_change+nome_da_EC2" e faça as alterações (commit e push).

*1.1.2* Solicite o Pull Request apontando para a Branch com o nome da EC2.

***1.2*** Caso seja uma nova EC2:

*1.2.1* Crie duas branch's, uma com o nome "create_or_change+nome_da_EC2" e outra com o nome da VPC à partir da Branch Develop e faça o publish da Branch. Solicite ao Reviewer que aprovará a Pull Request (DevOps) da criação da Infra a criação de Workspace no Terraform Cloud com o nome da EC2 e FAÇA AS ALTERAÇÕES NA BRANCH "create_or_change+nome_da_EC2". (commit e push).

*1.2.2* Após OK do DevOps solicite Pull Request para a Branch com o nome do Recurso.
### 2. ATENÇÃO! As variáveis são de dois tipos : *string* e *number* e estão todas descritas abaixo.

# VARIABLES > > >

*variable* **"image_id"** {
  description = "ID de imagem das instâncias"
  type = string
}

*variable* **"instance_count"** {
  description = "Número de instâncias que serão provisionadas"
  type = number
}

*variable* **"name"** {
  description = "Nome da instância"
  type        = string
}

*variable* **"srvcountry"** {
  description = "país"
  type        = string
}

*variable* **"srvclient"** {
  description = "cliente"
  type        = string
}

*variable* **"srvproduct"** {
  description = "produto"
  type        = string
}

*variable* **"srvrole"** {
  description = "regra"
  type        = string
}

*variable* **"srvenvironment"** {
  description = "ambiente"
  type        = string
}

*variable* **"instance_type"** {
  description = "Tipo (classe) da instância"
  type = string
}

*variable* **"user_data"** {
  description = "User data utilizado ao provisionar a instância"
  type = string 
}

*variable* **"enable_ssm"** {
  description = "Habilita o AWS SSM Session Manager. Essa é uma forma mais segura de conexão à instância do que a conexão por SSH"
  type = bool 
}

*variable* **"key_name"** {
  description = "Nome do Key Pair a ser usado para a instância"
}

*variable* **"iam_instance_profile"** {
  description = "Instance Profile do IAM vinculado à instância"
  type        = string
}

*variable* **"subnet_id"** {
  description = "ID da subnet onde a instância será provisionada"
}

*variable8* **"subnet_ids"** {
  description = "Lista com IDs das subnets onde a instância será provisionada"
}

*variable* **"private_ip"** {
  description = "IP privado da instância na VPC"
}

*variable* **"associate_public_ip_address"** {
  description = "Vincula um IP público à instância"
}

*variable* **"vpc_security_group_ids"** {
  description = "Lista com IDs dos security groups que serão vinculados à instância"
  type        = string
}

*variable* **"monitoring"** {
  description = "Controla se a instância terá monitoramento detalhado"
}

*variable* **"disable_api_termination"** {
  description = "Controla a proteção de destruição (terminate) da instância"
}

*variable* **"source_dest_check"** {
  description = "Controla se o tráfego é roteado para a instância quando o endereço de destino não é o mesmo da instância"
}

*variable* **"cpu_credits"** {
  description = "Opção de créditos de CPU da instância (\"unlimited\" ou \"standard\")"
}

*variable* **"ebs_optimized"** {
  description = "Controla se a instância será provisionada como EBS-optimized"
}

*variable* **"root_block_device"** {
  description = "Lista com maps de configuração do volume raiz da instância"
  type        = "list"
}

*variable* **"tags"** {
  description = "Map de tags da instância e dos volumes"
}