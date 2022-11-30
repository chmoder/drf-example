terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.44.1"
    }
  }
  backend "gcs" {
    bucket = "chmoder-tfstates"
    prefix = "terraform/drf_example"
  }
}

provider "google" {
  project = "chmoder"
  region  = "us-central1"
  zone    = "us-central1-c"
}