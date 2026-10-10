resource "auth0_branding" "brandings" {
  for_each = var.brandings

  favicon_url = each.value.favicon_url
  logo_url    = each.value.logo_url

  dynamic "colors" {
    for_each = each.value.colors != null ? [each.value.colors] : []
    content {
      page_background = colors.value.page_background
      primary         = colors.value.primary
    }
  }

  dynamic "font" {
    for_each = each.value.font != null ? [each.value.font] : []
    content {
      url = font.value.url
    }
  }

  dynamic "universal_login" {
    for_each = each.value.universal_login != null ? [each.value.universal_login] : []
    content {
      body = universal_login.value.body
    }
  }
}

