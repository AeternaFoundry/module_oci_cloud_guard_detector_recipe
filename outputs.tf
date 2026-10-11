output "cloud_guard_detector_recipes_id" {
  description = "Map of id values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no id are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_guard_detector_recipes_compartment_id" {
  description = "Map of compartment_id values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no compartment_id are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "cloud_guard_detector_recipes_defined_tags" {
  description = "Map of defined_tags values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no defined_tags are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "cloud_guard_detector_recipes_description" {
  description = "Map of description values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no description are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.description if v.description != null && length(v.description) > 0 }
}
output "cloud_guard_detector_recipes_detector" {
  description = "Map of detector values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no detector are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.detector if v.detector != null && length(v.detector) > 0 }
}
output "cloud_guard_detector_recipes_detector_recipe_type" {
  description = "Map of detector_recipe_type values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no detector_recipe_type are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.detector_recipe_type if v.detector_recipe_type != null && length(v.detector_recipe_type) > 0 }
}
output "cloud_guard_detector_recipes_detector_rules" {
  description = "Map of detector_rules values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no detector_rules are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.detector_rules if v.detector_rules != null && length(v.detector_rules) > 0 }
}
output "cloud_guard_detector_recipes_display_name" {
  description = "Map of display_name values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no display_name are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "cloud_guard_detector_recipes_effective_detector_rules" {
  description = "Map of effective_detector_rules values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no effective_detector_rules are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.effective_detector_rules if v.effective_detector_rules != null && length(v.effective_detector_rules) > 0 }
}
output "cloud_guard_detector_recipes_freeform_tags" {
  description = "Map of freeform_tags values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "cloud_guard_detector_recipes_owner" {
  description = "Map of owner values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no owner are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "cloud_guard_detector_recipes_source_detector_recipe_id" {
  description = "Map of source_detector_recipe_id values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no source_detector_recipe_id are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.source_detector_recipe_id if v.source_detector_recipe_id != null && length(v.source_detector_recipe_id) > 0 }
}
output "cloud_guard_detector_recipes_state" {
  description = "Map of state values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no state are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.state if v.state != null && length(v.state) > 0 }
}
output "cloud_guard_detector_recipes_system_tags" {
  description = "Map of system_tags values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no system_tags are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "cloud_guard_detector_recipes_target_ids" {
  description = "Map of target_ids values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no target_ids are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.target_ids if v.target_ids != null && length(v.target_ids) > 0 }
}
output "cloud_guard_detector_recipes_time_created" {
  description = "Map of time_created values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no time_created are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "cloud_guard_detector_recipes_time_updated" {
  description = "Map of time_updated values across all cloud_guard_detector_recipes, keyed the same as var.cloud_guard_detector_recipes except keys with no time_updated are omitted"
  value       = { for k, v in oci_cloud_guard_detector_recipe.cloud_guard_detector_recipes : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

