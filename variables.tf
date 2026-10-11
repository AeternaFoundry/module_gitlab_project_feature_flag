variable "project_feature_flags" {
  description = <<EOT
Map of project_feature_flags, attributes below
Required:
    - name
    - project
Optional:
    - active
    - description
    - strategies
EOT

  type = map(object({
    name        = string
    project     = string
    active      = optional(bool)
    description = optional(string)
    strategies = optional(set(object({
      name = string
      parameters = optional(object({
        group_id   = optional(string)
        percentage = optional(string)
        rollout    = optional(string)
        stickiness = optional(string)
        user_ids   = optional(string)
      }))
      scopes = optional(set(object({
        environment_scope = string
      })))
      user_list_id = optional(number)
    })))
  }))
}

