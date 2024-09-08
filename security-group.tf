resource "aws_security_group" "rds-sg" {
  name        = "${var.organisation}-${var.project}-${var.environment}-rds-SG"
  description = "Security Group For RDS"
  vpc_id      = var.vpc_id

  ingress {

    from_port       = var.rds_sg_ingress_from_port
    to_port         = var.rds_sg_ingress_to_port
    protocol        = var.rds_sg_ingress_protocol
    description     = var.rds_sg_ingress_description
    security_groups = [var.rds_ingress_cluster_sg]
  }

  egress {

    from_port   = var.rds_sg_egress_from_port
    to_port     = var.rds_sg_egress_to_port
    protocol    = var.rds_sg_egress_protocol
    description = var.rds_sg_egress_description
    cidr_blocks = [var.rds_sg_egress_cidr]
  }
  tags = merge(
    var.tags,
    {
      Name = "${var.organisation}-${var.project}-${var.environment}-rds-SG"
    }
  )
}
