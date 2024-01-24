terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  credentials = var.GUGL_CRED
  project     = var.GUGL_NAME_PROYECT
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = var.GOOGLE_STORAGE_BUCKET_NAME
  location      = "US"
  force_destroy = true

  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}

resource "google_bigquery_dataset" "dataset_demo" {
  dataset_id = var.BIGQ_DATASET_NAME
}
