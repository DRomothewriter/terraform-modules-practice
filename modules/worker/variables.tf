variable "account_id" {
  description = "Cloudflare account ID"
  type        = string
}

variable "worker_name" {
  description = "Name of Cloudflareworker"
  type        = string
}

variable "d1_database_id" {
  description = "ID of the D1 database to bind"
  type        = string
}
