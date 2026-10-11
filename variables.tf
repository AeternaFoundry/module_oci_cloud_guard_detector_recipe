variable "cloud_guard_detector_recipes" {
  description = <<EOT
Map of cloud_guard_detector_recipes, attributes below
Required:
    - compartment_id
    - display_name
Optional:
    - defined_tags
    - description
    - detector
    - freeform_tags
    - source_detector_recipe_id
    - detector_rules (block):
        - details (required, block):
            - condition (optional)
            - configurations (optional, block):
                - additional_properties (optional, block):
                    - key (optional)
                    - property_type (optional)
                    - value (optional)
                - allowed_values (optional, block):
                    - key (required)
                    - value (required)
                - allowed_values_data_type (optional)
                - config_key (required)
                - data_type (optional)
                - name (required)
                - value (optional)
                - values (optional, block):
                    - list_type (required)
                    - managed_list_type (required)
                    - value (required)
            - data_source_id (optional)
            - description (optional)
            - entities_mappings (optional, block):
                - display_name (optional)
                - entity_type (optional)
                - query_field (required)
            - is_enabled (required)
            - labels (optional)
            - recommendation (optional)
            - risk_level (required)
        - detector_rule_id (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id            = string
    display_name              = string
    defined_tags              = optional(map(string))
    description               = optional(string)
    detector                  = optional(string)
    freeform_tags             = optional(map(string))
    source_detector_recipe_id = optional(string)
    detector_rules = optional(list(object({
      details = object({
        condition = optional(string)
        configurations = optional(list(object({
          additional_properties = optional(list(object({
            key           = optional(string)
            property_type = optional(string)
            value         = optional(string)
          })))
          allowed_values = optional(list(object({
            key   = string
            value = string
          })))
          allowed_values_data_type = optional(string)
          config_key               = string
          data_type                = optional(string)
          name                     = string
          value                    = optional(string)
          values = optional(list(object({
            list_type         = string
            managed_list_type = string
            value             = string
          })))
        })))
        data_source_id = optional(string)
        description    = optional(string)
        entities_mappings = optional(list(object({
          display_name = optional(string)
          entity_type  = optional(string)
          query_field  = string
        })))
        is_enabled     = bool
        labels         = optional(list(string))
        recommendation = optional(string)
        risk_level     = string
      })
      detector_rule_id = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

