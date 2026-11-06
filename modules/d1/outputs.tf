output "database_id" {
  description = "ID de la base de datos D1 creada"
  value       = cloudflare_d1_database.app.id
}
