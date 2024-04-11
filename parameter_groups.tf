resource "aws_db_parameter_group" "main" {
  name   = var.db_instance_parameter_group_name
  family = var.database_instance_parameter_group_family

  lifecycle {
    create_before_destroy = var.database_instance_parameter_group_lifecycle_create_before_destroy
  }
}