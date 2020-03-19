resource "google_storage_bucket" "mybestsea2023bucket" {
  name          = "mybestsea2023bucket"
  storage_class = "COLDLINE"
  location      = "US"
}
