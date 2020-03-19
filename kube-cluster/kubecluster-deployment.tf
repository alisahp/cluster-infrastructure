provider "google" {
  version = "~> 3.0.0-beta.1"
  credentials = "${file("./mybestsea-service-account.json")}" #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.google_project_id}"
}
resource "google_container_cluster" "mybestsea" {
  name               = "mybestsea"
  network            = "default"
  subnetwork         = "default"
  location           = "us-central1"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.node_count}"
  project            = "${var.google_project_id}"
  node_config {
    machine_type = "n1-standard-2"
  }
}
