resource "google_storage_bucket" "alisait125_kerem" {
  name          = "${var.google_bucket_name}"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
