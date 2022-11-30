resource "google_artifact_registry_repository" "chmoder-repo" {
  location      = "us-central1"
  repository_id = "chmoder"
  description   = "chmoder docker repository"
  format        = "DOCKER"

  depends_on = [
    google_project_service.artifactregistry_api
  ]
}