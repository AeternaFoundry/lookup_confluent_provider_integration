output "provider_integration_lookup_id" {
  description = "Map of id values across all provider_integration_lookup, keyed the same as var.provider_integration_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_provider_integration.provider_integration_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "provider_integration_lookup_aws" {
  description = "Map of aws values across all provider_integration_lookup, keyed the same as var.provider_integration_lookup except keys with no aws are omitted"
  value       = { for k, v in data.confluent_provider_integration.provider_integration_lookup : k => v.aws if v.aws != null && length(v.aws) > 0 }
}
output "provider_integration_lookup_display_name" {
  description = "Map of display_name values across all provider_integration_lookup, keyed the same as var.provider_integration_lookup except keys with no display_name are omitted"
  value       = { for k, v in data.confluent_provider_integration.provider_integration_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "provider_integration_lookup_environment" {
  description = "Map of environment values across all provider_integration_lookup, keyed the same as var.provider_integration_lookup except keys with no environment are omitted"
  value       = { for k, v in data.confluent_provider_integration.provider_integration_lookup : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "provider_integration_lookup_usages" {
  description = "Map of usages values across all provider_integration_lookup, keyed the same as var.provider_integration_lookup except keys with no usages are omitted"
  value       = { for k, v in data.confluent_provider_integration.provider_integration_lookup : k => v.usages if v.usages != null && length(v.usages) > 0 }
}

