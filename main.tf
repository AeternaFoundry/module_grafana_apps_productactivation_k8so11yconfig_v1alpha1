resource "grafana_apps_productactivation_k8so11yconfig_v1alpha1" "apps_productactivation_k8so11yconfig_v1alpha1s" {
  for_each = var.apps_productactivation_k8so11yconfig_v1alpha1s


  dynamic "metadata" {
    for_each = each.value.metadata != null ? each.value.metadata : []
    content {
      folder_uid = metadata.value.folder_uid
      uid        = metadata.value.uid
    }
  }

  dynamic "options" {
    for_each = each.value.options != null ? each.value.options : []
    content {
      manager_identity = options.value.manager_identity
      overwrite        = options.value.overwrite
    }
  }

  dynamic "spec" {
    for_each = each.value.spec != null ? each.value.spec : []
    content {
      enabled = spec.value.enabled
    }
  }
}

