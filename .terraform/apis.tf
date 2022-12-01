resource "google_project_service" "serviceusage_api" {
  project = var.project_id
  service = "serviceusage.googleapis.com"
}

resource "google_project_service" "cloudresourcemanager_api" {
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "artifactregistry_api" {
  project = var.project_id
  service = "artifactregistry.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "iamcredentials_api" {
  project = var.project_id
  service = "iamcredentials.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "sqladmin_api" {
  project = var.project_id
  service = "sqladmin.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "compute_api" {
  project = var.project_id
  service = "compute.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "run_api" {
  project = var.project_id
  service = "run.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "containerregistry_api" {
  project = var.project_id
  service = "containerregistry.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "cloudbuild_api" {
  project = var.project_id
  service = "cloudbuild.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "servicenetworking_api" {
  project = var.project_id
  service = "servicenetworking.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "vpcaccess_api" {
  project = var.project_id
  service = "vpcaccess.googleapis.com"

  depends_on = [
    google_project_service.serviceusage_api
  ]
}
