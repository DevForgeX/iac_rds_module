variable "database_subnet_group_name" {
  type = string
  default = "odoo-db-subnet-group"
  description = "Default Database Subnet Group Name"
}

variable "database_cluster_identidier" {
  type = string
  default = "Odoo-PostGres_Cluster"
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
  default = "foobarbar"
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
  default = ["postgresql", "audit", "slowquery"]
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
  type = number
  default = 5
  description = "Default Data Retention Period"
}










variable "database_parameter_group_name" {
  type = string
  default = "default.mysql5.7"
  description = "Default DB Parameter Group Name"
}

variable "database_termination_skip_final_snapshot" {
  type = bool
  default = false
  description = "Skip Final DB Snapshot On DB Termination"
}

variable "database_auto_minor_version_upgrade" {
  type = bool
  default = true
  description = "Automatic Trigger For Minor DB Versions Upgrade"
}

variable "database_multi_az_enabled" {
  type = bool
  default = true
  description = "Trigger to enable MultiAZ Deployment For DB"
}

variable "database_storage_encryption_enabled" {
  type = bool
  default = true
  description = "Trigger to enable Storage Encryption For DB"
}

