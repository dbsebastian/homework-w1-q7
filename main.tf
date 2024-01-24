terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.13.0"
    }
  }
}

provider "google" {
  credentials = data.hashicorp.secret.github_secret.GUGL_CRED.value
  project     = data.hashicorp.secret.github_secret.GUGL_NAME_PROYECT.value
  region      = "us-central1"
}

resource "google_storage_bucket" "demo-bucket" {
  name          = data.hashicorp.secret.github_secret.GOOGLE_STORAGE_BUCKET_NAME.value
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
  dataset_id = data.hashicorp.secret.github_secret.BIGQ_DATASET_NAME.value
}
