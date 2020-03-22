resource "google_storage_bucket" "mybestsea2023bucket" {
  name          = "mybestsea"
  storage_class = "COLDLINE"
  location      = "US"
}
