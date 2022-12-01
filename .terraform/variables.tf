variable "project_id" {
  type        = string
  description = "GCP project id"
  default     = "chmoder"
}

variable "network_name" {
  type        = string
  description = "Name of VPC network"
  default     = "drf-example"
}
