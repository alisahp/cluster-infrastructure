variable "cluster_name" {
  default = "mybestsea"
}

variable "node_count" {
  default = "3"
}

variable "google_project_id" {
  default = "mybestsea"
}

variable "service_account_path" {
  default = "./mybestsea-service-account.json"
}

variable "region" {
  default = "us-central1"
}

variable "google_bucket_name" {
  default = "mybestsea1"
}

variable "cluster_version" {
  default = "1.14.10-gke.27"
}
