resource "aws_security_group" "mydb3" {
  name        = "mydb3"
  description = "RDS postgres servers"
  vpc_id      = var.rds_vpc_id
  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_db_instance" "mydb3" {
  engine                  = "postgres"
  engine_version          = "12.5"
  identifier              = "mydb2"
  allocated_storage       = 20
  storage_type            = "gp2"
  instance_class          = "db.t2.micro"
  multi_az                = false
  name                    = "mydb3"
  username                = "postgre"
  password                = "foobarba2"
  parameter_group_name    = "default.postgres12"
  port                    = 5432
  publicly_accessible     = false
  backup_retention_period = 10
  availability_zone       = "ap-south-1b"
  db_subnet_group_name    = var.rds_public_subnet_group
  skip_final_snapshot     = "true"
}

