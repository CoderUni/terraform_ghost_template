output "cloudflare_root_a_record_metadata" {
  value       = cloudflare_record.root.metadata
  description = "The metadata of the root A record"
}

output "cloudflare_www_a_record_metadata" {
  value       = cloudflare_record.www.metadata
  description = "The metadata of the www A record"
}