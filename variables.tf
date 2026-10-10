variable "brandings" {
  description = <<EOT
Map of brandings, attributes below
Optional:
    - favicon_url
    - logo_url
    - colors (block):
        - page_background (optional)
        - primary (optional)
    - font (block):
        - url (required)
    - universal_login (block):
        - body (required)
EOT

  type = map(object({
    favicon_url = optional(string)
    logo_url    = optional(string)
    colors = optional(object({
      page_background = optional(string)
      primary         = optional(string)
    }))
    font = optional(object({
      url = string
    }))
    universal_login = optional(object({
      body = string
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

