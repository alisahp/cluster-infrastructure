resource "google_storage_bucket" "mybestsea1442_bucket" {
  name          = "${var.google_bucket_name}"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
