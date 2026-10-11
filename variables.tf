variable "provider_integration_lookup" {
  description = <<EOT
Map of provider_integration_lookup, attributes below
Required:
    - environment (block):
        - id (required)
Optional:
    - display_name
EOT

  type = map(object({
    display_name = optional(string)
    environment = object({
      id = string
    })
  }))
}

