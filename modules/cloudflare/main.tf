resource "cloudflare_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  value   = var.ec2_public_ip
  type    = "A"
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  value   = var.ec2_public_ip
  type    = "A"
  proxied = true
}

resource "cloudflare_zone_settings_override" "domain" {
  zone_id = var.cloudflare_zone_id

  settings {
    brotli                   = "on"
    tls_1_3                  = "on"
    automatic_https_rewrites = "on"
    ssl                      = "strict"
    minify {
      css  = "on"
      js   = "on"
      html = "on"
    }
  }
}
