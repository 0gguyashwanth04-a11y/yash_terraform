output "alb_dns_name" {
  description = "Public DNS of the ALB"
  value       = aws_lb.alb.dns_name
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.postgres.address
  sensitive   = true
}
