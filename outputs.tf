output "brandings_id" {
  description = "Map of id values across all brandings, keyed the same as var.brandings except keys with no id are omitted"
  value       = { for k, v in auth0_branding.brandings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "brandings_colors" {
  description = "Map of colors values across all brandings, keyed the same as var.brandings except keys with no colors are omitted"
  value       = { for k, v in auth0_branding.brandings : k => one(v.colors) if v.colors != null && length(v.colors) > 0 }
}
output "brandings_favicon_url" {
  description = "Map of favicon_url values across all brandings, keyed the same as var.brandings except keys with no favicon_url are omitted"
  value       = { for k, v in auth0_branding.brandings : k => v.favicon_url if v.favicon_url != null && length(v.favicon_url) > 0 }
}
output "brandings_font" {
  description = "Map of font values across all brandings, keyed the same as var.brandings except keys with no font are omitted"
  value       = { for k, v in auth0_branding.brandings : k => one(v.font) if v.font != null && length(v.font) > 0 }
}
output "brandings_logo_url" {
  description = "Map of logo_url values across all brandings, keyed the same as var.brandings except keys with no logo_url are omitted"
  value       = { for k, v in auth0_branding.brandings : k => v.logo_url if v.logo_url != null && length(v.logo_url) > 0 }
}
output "brandings_universal_login" {
  description = "Map of universal_login values across all brandings, keyed the same as var.brandings except keys with no universal_login are omitted"
  value       = { for k, v in auth0_branding.brandings : k => one(v.universal_login) if v.universal_login != null && length(v.universal_login) > 0 }
}

