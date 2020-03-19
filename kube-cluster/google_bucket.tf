resource "google_storage_bucket" "mybestsea1" {
  name          = "${var.google_bucket_name}"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
