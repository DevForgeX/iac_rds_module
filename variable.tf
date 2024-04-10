variable "database_subnet_group_name" {
  type = string
  default = "odoo-db-subnet-group"
  description = "Default Database Subnet Group Name"
}

variable "database_cluster_identidier" {
  type = string
  default = "odoo-postgres-cluster"
  description = "Default DB Cluster Identifier"
}

variable "database_cluster_engine" {
  type = string
  default = "aurora-postgresql"
  description = "Default Cluster Engine"
}

variable "database_db_name" {
  type = string
  default = "odoo"
  description = "Dafault Database Name"
}

variable "database_cluster_db_username" {
  type = string
  default = "foo"
  description = "Default DB Username"
}

variable "database_cluster_db_password" {
  type = string
  default = "foobarbar12345"
  description = "Default DB Password"
}

variable "database_cluster_apply_changes_immediately" {
  type = bool
  default = true
  description = "Trigger To Allow Immediate Application Of Changes"
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
  default = [ "subnet-0bff39194476e14be", "subnet-0179e0979ca6b0163", "	subnet-02c3bbb6cf1005d26" ]
}

variable "database_cluster_delete_protection" {
  type = bool
  default = false
  description = "Delete Protection Trigger For Cluster"
}

variable "database_cluster_cloudwatch_log_exports" {
  type = list(string)
  default = ["postgresql"]
  description = "Default Logs Type To Send To Cloudwatch"
}

# variable "database_cluster_engine_version" {
#   type = string
#   default = "value"
#   description = "Default DB Cluster Engine Version"
# }

variable "database_cluster_backup_retention_period" {
  type = number
  default = 5
  description = "Default Data Retention Period"
}

variable "database_cluster_preferrred_backup_window" {
  type = string
  default = "11:00-00:00"
  description = "Default Data Retention Period"
}


variable "database_cluster_vpc_security_group_ids" {
  type = list(string)
  default = [ "sg-0b560917e4287612b" ]
  description = "List Of Security Group For DB Cluster"
}

variable "database_cluster_storage_encrypted" {
  type = bool
  default = false
  description = "Enable encryption for DB storage"
}

variable "database_cluster_instance_count" {
  type = number
  default = 1
  description = "Default value for number of DB Instances"
}

variable "database_cluster_instance_identifier_prefix" {
  type = string
  default = "odoo-cluster-instance"
}

variable "database_cluster_instance_class" {
  type = string
  default = "t3.nano"
}