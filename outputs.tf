output "devicefarm_device_pools_id" {
  description = "Map of id values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devicefarm_device_pools_arn" {
  description = "Map of arn values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "devicefarm_device_pools_description" {
  description = "Map of description values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "devicefarm_device_pools_max_devices" {
  description = "Map of max_devices values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.max_devices if v.max_devices != null }
}
output "devicefarm_device_pools_name" {
  description = "Map of name values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.name if v.name != null && length(v.name) > 0 }
}
output "devicefarm_device_pools_project_arn" {
  description = "Map of project_arn values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.project_arn if v.project_arn != null && length(v.project_arn) > 0 }
}
output "devicefarm_device_pools_region" {
  description = "Map of region values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.region if v.region != null && length(v.region) > 0 }
}
output "devicefarm_device_pools_rule" {
  description = "Map of rule values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.rule if v.rule != null && length(v.rule) > 0 }
}
output "devicefarm_device_pools_tags" {
  description = "Map of tags values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "devicefarm_device_pools_tags_all" {
  description = "Map of tags_all values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "devicefarm_device_pools_type" {
  description = "Map of type values across all devicefarm_device_pools, keyed the same as var.devicefarm_device_pools"
  value       = { for k, v in aws_devicefarm_device_pool.devicefarm_device_pools : k => v.type if v.type != null && length(v.type) > 0 }
}

