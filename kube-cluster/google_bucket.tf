resource "google_storage_bucket" "mybestsea1465" {
  name          = "mybestsea.com"
  location      = "us-central1"
  force_destroy = true

  bucket_policy_only = true
  }
}
