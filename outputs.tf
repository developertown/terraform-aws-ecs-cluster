output "name" {
  description = "ECS cluster name"
  value       = local.enabled ? local.cluster_name : null
}

output "id" {
  description = "ECS cluster id"
  value       = local.enabled ? join("", aws_ecs_cluster.default.*.id) : null
}

output "arn" {
  description = "ECS cluster arn"
  value       = local.enabled ? join("", aws_ecs_cluster.default.*.arn) : null
}

output "role_name" {
  description = "IAM role name"
  value       = local.enabled ? join("", aws_iam_role.default.*.name) : null
}