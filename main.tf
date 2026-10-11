data "confluent_provider_integration" "provider_integration_lookup" {
  for_each = var.provider_integration_lookup

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }
}

