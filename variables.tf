variable "apps_productactivation_k8so11yconfig_v1alpha1s" {
  description = <<EOT
Map of apps_productactivation_k8so11yconfig_v1alpha1s, attributes below
Optional:
    - metadata (block):
        - folder_uid (optional)
        - uid (required)
    - options (block):
        - manager_identity (optional)
        - overwrite (optional)
    - spec (block):
        - enabled (required)
EOT

  type = map(object({
    metadata = optional(list(object({
      folder_uid = optional(string)
      uid        = string
    })))
    options = optional(list(object({
      manager_identity = optional(string)
      overwrite        = optional(bool)
    })))
    spec = optional(list(object({
      enabled = bool
    })))
  }))
}

