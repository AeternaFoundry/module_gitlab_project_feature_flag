output "project_feature_flags_id" {
  description = "Map of id values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no id are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_feature_flags_active" {
  description = "Map of active values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no active are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.active if v.active != null }
}
output "project_feature_flags_created_at" {
  description = "Map of created_at values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no created_at are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "project_feature_flags_description" {
  description = "Map of description values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no description are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.description if v.description != null && length(v.description) > 0 }
}
output "project_feature_flags_name" {
  description = "Map of name values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no name are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.name if v.name != null && length(v.name) > 0 }
}
output "project_feature_flags_project" {
  description = "Map of project values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no project are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.project if v.project != null && length(v.project) > 0 }
}
output "project_feature_flags_strategies" {
  description = "Map of strategies values across all project_feature_flags, keyed the same as var.project_feature_flags except keys with no strategies are omitted"
  value       = { for k, v in gitlab_project_feature_flag.project_feature_flags : k => v.strategies if v.strategies != null && length(v.strategies) > 0 }
}

