resource "google_dns_managed_zone" "mybestsea" {
  name     = "mybestsea"
  dns_name = "mybestsea.com."
  project  = "${var.google_project_id}"
}
