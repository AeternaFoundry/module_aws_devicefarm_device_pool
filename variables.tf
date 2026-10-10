variable "devicefarm_device_pools" {
  description = <<EOT
Map of devicefarm_device_pools, attributes below
Required:
    - name
    - project_arn
    - rule (block):
        - attribute (optional)
        - operator (optional)
        - value (optional)
Optional:
    - description
    - max_devices
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    name        = string
    project_arn = string
    description = optional(string)
    max_devices = optional(number)
    region      = optional(string)
    tags        = optional(map(string))
    tags_all    = optional(map(string))
    rule = list(object({
      attribute = optional(string)
      operator  = optional(string)
      value     = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devicefarm_device_pools : (
        length(v.rule) >= 1
      )
    ])
    error_message = "Each rule list must contain at least 1 items"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

