resource "google_storage_bucket" "mybestsea" {
  name          = "mybestsea"
  storage_class = "COLDLINE"
  location      = "US"
}
