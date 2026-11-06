variable "account_id" {
  description = "Cloudflare account ID"
  type        = string
}

variable "api_token" {
  description = "Cloudflare API token with Workers and D1 permissions"
  type        = string
  sensitive   = true
}

variable "worker_name" {
  description = "Name of Cloudflare worker"
  type        = string
  default     = "simple-worker-750843"
}

variable "d1_database_name" {
  description = "Name of D1 database"
  type        = string
  default     = "simple-db"
}
