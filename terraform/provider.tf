terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.1.0"
    }
  }
}

provider "google" {
  project = var.project
  region  = var.gcp_mysql_region_primary
  zone    = "us-central1-a"
}
