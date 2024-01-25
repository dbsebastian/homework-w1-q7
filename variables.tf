variable "GUGL_NAME_PROYECT" {
  description = "Nombre del projecto"
  default     = "taxi-de-pr"
}

variable "GOOGLE_STORAGE_BUCKET_NAME" {
  description = "My Storage Bucket Name"
  default     = "taxi-de-pr-demo-storage"
}

variable "BIGQ_DATASET_NAME" {
  description = "My Bigquery Dataset Name"
  default     = "demo_dataset_name"
}

variable "GOOGLE_CREDENTIALS" {
    description =   "permiso-json de la cuenta"
    default     =   "mipermiso_covid.json"
}