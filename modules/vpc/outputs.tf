output "network" {
  value = google_compute_network.vpc_network.id
}
output "subnet" {
  value = google_compute_subnetwork.subnet.self_link
}
