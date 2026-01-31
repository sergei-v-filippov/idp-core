variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  default     = "us-central1"
}

variable "env_name" {
  description = "Environment name (e.g. prod, staging)"
  type        = string
  default     = "idp-prod"
}

variable "domain_name" {
  description = "The base domain for the IDP platform"
  type        = string
  default     = "idp.filippov.world"
}

variable "gcs_bucket_name" {
  description = "The base domain for the IDP platform"
  type        = string
  default     = "tf-state-idp-core-svf"
}