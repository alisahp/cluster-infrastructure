resource "google_storage_bucket" "_mybestsea1495" {
  name          = "${var.google_bucket_name}"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
