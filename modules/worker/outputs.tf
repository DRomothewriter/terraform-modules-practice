output "worker_url" {
  description = "URL default del Worker"
  value       = data.cloudflare_worker.hello.subdomain.url
}
