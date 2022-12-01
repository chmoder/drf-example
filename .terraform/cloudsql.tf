resource "google_sql_database_instance" "drf_example" {
  name             = "drf-example-instance-1"
  database_version = "POSTGRES_14"
  region           = "us-central1"

  settings {
    tier = "db-f1-micro"
    ip_configuration {
      ipv4_enabled    = true
      # private_network = google_compute_network.vpc.id
    }
  }

  depends_on = [
    google_service_networking_connection.private_vpc_connection,
    google_project_service.sqladmin_api
  ]
}


