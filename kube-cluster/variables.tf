variable "cluster_name" {
  default = "mybestsea"
}

variable "node_count" {
  default = "2"
}

variable "google_project_id" {
  default = "deckube2019"
}

variable "service_account_path" {
  default = "./deckube2019-846b8032b7fb.json"
}

variable "region" {
  default = "us-central1"
}

variable "google_bucket_name" {
  default = "mybestsea1"
}

variable "cluster_version" {
  default = "1.13.11-gke.9"
}
