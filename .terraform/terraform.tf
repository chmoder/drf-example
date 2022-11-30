terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
  backend "gcs" {
    bucket  = "chmoder-tfstates"
    prefix  = "terraform/drf_example"
  }
}

provider "google" {
#   credentials = file("creds.json")

  project = "chmoder"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}
