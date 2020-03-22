resource "google_dns_managed_zone" "mybestsea" {
  name     = "mybestsea"
  dns_name = "alisait.net."
  project  = "${var.google_project_id}"
}
