resource "google_storage_bucket" "isparta1455_bucket" {
  name          = "${var.google_bucket_name}"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
