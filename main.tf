resource "oci_cloud_guard_detector_recipe" "cloud_guard_detector_recipes" {
  for_each = var.cloud_guard_detector_recipes

  compartment_id            = each.value.compartment_id
  display_name              = each.value.display_name
  defined_tags              = each.value.defined_tags
  description               = each.value.description
  detector                  = each.value.detector
  freeform_tags             = each.value.freeform_tags
  source_detector_recipe_id = each.value.source_detector_recipe_id

  dynamic "detector_rules" {
    for_each = each.value.detector_rules != null ? each.value.detector_rules : []
    content {
      details {
        condition = detector_rules.value.details.condition
        dynamic "configurations" {
          for_each = detector_rules.value.details.configurations != null ? detector_rules.value.details.configurations : []
          content {
            dynamic "additional_properties" {
              for_each = configurations.value.additional_properties != null ? configurations.value.additional_properties : []
              content {
                key           = additional_properties.value.key
                property_type = additional_properties.value.property_type
                value         = additional_properties.value.value
              }
            }
            dynamic "allowed_values" {
              for_each = configurations.value.allowed_values != null ? configurations.value.allowed_values : []
              content {
                key   = allowed_values.value.key
                value = allowed_values.value.value
              }
            }
            allowed_values_data_type = configurations.value.allowed_values_data_type
            config_key               = configurations.value.config_key
            data_type                = configurations.value.data_type
            name                     = configurations.value.name
            value                    = configurations.value.value
            dynamic "values" {
              for_each = configurations.value.values != null ? configurations.value.values : []
              content {
                list_type         = values.value.list_type
                managed_list_type = values.value.managed_list_type
                value             = values.value.value
              }
            }
          }
        }
        data_source_id = detector_rules.value.details.data_source_id
        description    = detector_rules.value.details.description
        dynamic "entities_mappings" {
          for_each = detector_rules.value.details.entities_mappings != null ? detector_rules.value.details.entities_mappings : []
          content {
            display_name = entities_mappings.value.display_name
            entity_type  = entities_mappings.value.entity_type
            query_field  = entities_mappings.value.query_field
          }
        }
        is_enabled     = detector_rules.value.details.is_enabled
        labels         = detector_rules.value.details.labels
        recommendation = detector_rules.value.details.recommendation
        risk_level     = detector_rules.value.details.risk_level
      }
      detector_rule_id = detector_rules.value.detector_rule_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

