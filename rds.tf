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

resource "aws_rds_cluster" "main" {
    # for_each = data.aws_availability_zones.main
  cluster_identifier      = var.database_cluster_identidier
  engine                  = var.database_cluster_engine
  availability_zones      =   [for az in data.aws_availability_zones.main.names : az]              # ["us-west-2a", "us-west-2b", "us-west-2c"]
  database_name           = var.database_db_name
  master_username         = var.database_cluster_db_username
  master_password         = var.database_cluster_db_password
  apply_immediately       = var.database_cluster_apply_changes_immediately
  db_subnet_group_name = aws_db_subnet_group.main.name
  deletion_protection = var.database_cluster_delete_protection
  enabled_cloudwatch_logs_exports = var.database_cluster_cloudwatch_log_exports
  backup_retention_period = var.database_cluster_backup_retention_period
  preferred_backup_window = var.database_cluster_preferrred_backup_window
  storage_encrypted = var.database_cluster_storage_encrypted
  vpc_security_group_ids = var.database_cluster_vpc_security_group_ids



    tags = merge(
    var.tags,
    {
      Name = "${var.global_var_org_tag}-${var.global_var_product_tag}-${var.global_var_environment_tag}-cluster"
    }
  )
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = var.database_cluster_instance_count
  identifier         = "${var.database_cluster_instance_identifier_prefix}-${count.index}"
  cluster_identifier = aws_rds_cluster.main.id
  instance_class     = var.database_cluster_instance_class
  engine             = aws_rds_cluster.main.engine
  engine_version     = aws_rds_cluster.main.engine_version

  tags = merge(
    var.tags,
    {
      Name = "${var.global_var_org_tag}-${var.global_var_product_tag}-${var.global_var_environment_tag}-subnet-group"
    }
  )
}