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

variable "database_db_name" {
  type = string
  default = "odoo"
  description = "Dafault Database Name"
}

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
  default = [ "subnet-0bff39194476e14be", "subnet-0179e0979ca6b0163", "	subnet-02c3bbb6cf1005d26" ]
}

variable "database_instance_delete_protection" {
  type = bool
  default = false
  description = "Delete Protection Trigger For Cluster"
}

variable "database_instance_enable_multi_az" {
  type = bool
  default = false
}

variable "database_instance_backup_retention_period" {
  type = number
  default = 5
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
  default = false
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

variable "database_instance_final_snapshot_identifier" {
  type = string
  default = "odoo-final-rds-snapshot"
}

variable "database_instance_skip_final_snapshot" {
  type = bool
  default = true
}

variable "database_instance_allocated_storage" {
  type = number
  default = 10
}

variable "database_instance_storage_type" {
  type = string
  default = "gp3"
}

