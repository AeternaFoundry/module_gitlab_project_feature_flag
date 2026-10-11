resource "gitlab_project_feature_flag" "project_feature_flags" {
  for_each = var.project_feature_flags

  name        = each.value.name
  project     = each.value.project
  active      = each.value.active
  description = each.value.description
  strategies  = each.value.strategies
}

