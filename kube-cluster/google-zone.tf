resource "google_dns_managed_zone" "fuchicorp" {
  name     = "fuchicorp"
  dns_name = "fuchicorp.com."
  project  = "${var.google_project_id}"
}
