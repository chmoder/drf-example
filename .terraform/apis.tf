resource "google_project_service" "serviceusage_api" {
  service = "serviceusage.googleapis.com"
}

resource "google_project_service" "artifactregistry_api" {
  service = "artifactregistry.googleapis.com"
  depends_on = [
    google_project_service.serviceusage_api
  ]
}

resource "google_project_service" "cloudresourcemanager_api" {
  service = "cloudresourcemanager.googleapis.com"
  depends_on = [
    google_project_service.serviceusage_api
  ]
}