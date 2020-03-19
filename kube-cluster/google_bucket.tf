resource "google_storage_bucket" "mybestsea2023_bucket" {
  name          = "var.google_bucket_name"
  storage_class = "COLDLINE"
  location      = "US"
}
