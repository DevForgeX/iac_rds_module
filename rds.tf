resource "aws_db_subnet_group" "main" {
  name       = var.database_subnet_group_name
  subnet_ids = var.database_subnet_group_subnet_ids #[aws_subnet.frontend.id, aws_subnet.backend.id]

  tags = merge(
    var.tags,
    {
      Name = "${var.global_var_org_tag}-${var.global_var_product_tag}-${var.global_var_environment_tag}-subnet-group"
    }
  )
}

resource "aws_db_instance" "main" {
  count = var.database_instance_instance_count
  identifier              = "${var.database_instance_identifier_prefix}-${count.index}"
  engine                  = var.database_instance_engine
  engine_version          = var.database_instance_engine_version
  instance_class          = var.database_instance_class
  allocated_storage       = var.database_instance_allocated_storage
  max_allocated_storage   = var.database_instance_max_allocated_storage
  # db_name                 = var.database_db_name
  username =  var.database_instance_db_username
  password = var.database_instance_db_password
  parameter_group_name    = aws_db_parameter_group.main.name
  backup_retention_period = var.database_instance_backup_retention_period
  vpc_security_group_ids  = aws_security_group.rds-sg.id
  db_subnet_group_name    = aws_db_subnet_group.main.name
  skip_final_snapshot     = var.database_instance_skip_final_snapshot
  multi_az = var.database_instance_enable_multi_az
  deletion_protection = var.database_instance_delete_protection
  storage_encrypted = var.database_instance_storage_encrypted
  # final_snapshot_identifier = var.database_instance_final_snapshot_identifier
  storage_type = var.database_instance_storage_type
  publicly_accessible = var.database_instance_publicly_accessible
  auto_minor_version_upgrade = var.database_instance_auto_minor_version_upgrade
  performance_insights_enabled = var.database_instance_performance_insights_enabled
  monitoring_interval = var.database_instance_monitoring_interval
  monitoring_role_arn = var.database_instance_monitoring_role_arn
  maintenance_window       = var.database_instance_maintenance_window
  backup_window            = var.database_instance_backup_window

  timeouts {
    create = "1h"
    delete = "1h"
    update = "1h"
  }

    tags = merge(
    var.tags,
    {
      Name = "${var.global_var_org_tag}-${var.global_var_product_tag}-${var.global_var_environment_tag}-db"
    }
  )
}

data "aws_secretsmanager_secret_version" "this" {
  secret_id = var.secretsmanager_secret_id
}