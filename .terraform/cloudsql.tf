resource "google_sql_database_instance" "drf_example" {
  name             = "drf-example-instance-1"
  database_version = "POSTGRES_14"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }

  depends_on = [
    google_project_service.sqladmin_api
  ]
}