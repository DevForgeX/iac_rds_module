variable "database_subnet_group_name" {
  type = string
  default = "odoo-db-subnet-group"
  description = "Default Database Subnet Group Name"
}

variable "database_instance_engine" {
  type = string
  default = "postgresql"
  description = "Default Cluster Engine"
}

variable "database_instance_engine_version" {
  type = string
  default = "16"
}

# variable "database_db_name" {
#   type = string
#   default = "odoo"
#   description = "Dafault Database Name"
# }

variable "database_instance_db_username" {
  type = string
  default = "foo"
  description = "Default DB Username"
}

variable "database_instance_db_password" {
  type = string
  default = "foobarbar12345"
  description = "Default DB Password"
}

variable "tags" {
  type = map(string)
  default = {
    CreatedBy = "DevForgeX"
  }
}

variable "global_var_environment_tag" {
  type        = string
  default     = "dev"
  description = "Default envieonment Tag"
}

variable "global_var_product_tag" {
  type        = string
  default     = "odoo"
  description = "Default Product Name Tag"
}

variable "global_var_org_tag" {
  type        = string
  default     = "gsa"
  description = "Default Name For VPC"
}

variable "database_subnet_group_subnet_ids" {
  type = list(string)
  default = [ "subnet-01004b3aa01205cb3", "subnet-08bd9f5e0ddb04a3b", "subnet-03ca7da626b601c54" ]
}

variable "database_instance_delete_protection" {
  type = bool
  default = true
  description = "Delete Protection Trigger For Cluster"
}

variable "database_instance_enable_multi_az" {
  type = bool
  default = false
}

variable "database_instance_backup_retention_period" {
  type = number
  default = 7
  description = "Default Data Retention Period"
}

variable "db_instance_parameter_group_name" {
  type = string
  default = "odoo-db-parameter-group"
}


variable "database_instance_vpc_security_group_ids" {
  type = list(string)
  default = [ "sg-0b560917e4287612b" ]
  description = "List Of Security Group For DB Cluster"
}

variable "database_instance_storage_encrypted" {
  type = bool
  default = true
  description = "Enable encryption for DB storage"
}

variable "database_instance_instance_count" {
  type = number
  default = 1
  description = "Default value for number of DB Instances"
}

variable "database_instance_identifier_prefix" {
  type = string
  default = "odoo-cluster-instance"
}

variable "database_instance_class" {
  type = string
  default = "db.t3.medium"
}

# variable "database_instance_final_snapshot_identifier" {
#   type = string
#   default = "odoo-final-rds-snapshot"
# }

variable "database_instance_skip_final_snapshot" {
  type = bool
  default = true
}

variable "database_instance_allocated_storage" {
  type = number
  default = 50
}

variable "database_instance_max_allocated_storage" {
  type = number
  default = 1000
}

variable "database_instance_storage_type" {
  type = string
  default = "gp3"
}

variable "database_instance_parameter_group_family" {
  type = string
  default = "postgres16"
}


variable "rds_sg_ingress_from_port" {
  type    = number
  default = 5432
}

variable "rds_sg_ingress_to_port" {
  type    = number
  default = 5432
}

variable "rds_sg_ingress_protocol" {
  type    = string
  default = "tcp"
}

variable "rds_sg_ingress_description" {
  type    = string
  default = "Ingress details for CoreOps RDS Security Groups"
}

variable "rds_sg_egress_from_port" {
  type    = number
  default = 0
}

variable "rds_sg_egress_to_port" {
  type    = number
  default = 0
}

variable "rds_sg_egress_protocol" {
  type    = string
  default = "-1"
}

variable "rds_sg_egress_description" {
  type    = string
  default = "Egress details for CoreOps RDS Security Groups"
}

variable "rds_sg_egress_cidr" {
  type    = string
  default = "0.0.0.0/0"
}


variable "organisation" {
  type    = string
  default = "GSA"
}

variable "project" {
  type    = string
  default = "coreops"
}

variable "environment" {
  type    = string
  default = "prod"
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "vpc_id" {
  type    = string
  default = "vpc-06c2380b5e449ad25"
}

variable "secretsmanager_secret_id" {
  type = string
  default = "gsa-coreops-prod-rds-creds"
}

variable "database_instance_backup_window" {
  type    = string
  default = "00:00-01:00"
}

variable "database_instance_maintenance_window" {
  type    = string
  default = "sat:02:00-sat:03:00"
}

variable "database_instance_monitoring_role_arn" {
  type    = string
  default = "arn:aws:iam::730335333955:role/RDS-Enchanced-Monitoring"
}

variable "database_instance_monitoring_interval" {
  type    = number
  default = 5
}

variable "database_instance_performance_insights_enabled" {
  type    = bool
  default = true
}

variable "database_instance_auto_minor_version_upgrade" {
  type    = bool
  default = false
}

variable "database_instance_publicly_accessible" {
  type    = bool
  default = false
}