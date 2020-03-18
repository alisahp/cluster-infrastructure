provider "google" {
  credentials = ./.deckube2019-8bb979f5bf09.json #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.google_project_id}"
}

resource "google_container_cluster" "cluster_mybestsea_com" {
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  location           = "us-central1-a"
  min_master_version = "${var.cluster_version}"
  initial_node_count = "${var.node_count}"
  project            = "${var.google_project_id}"

  node_config {
    machine_type = "n1-standard-2"
  }
}
