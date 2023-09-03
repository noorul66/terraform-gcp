resource "google_compute_instance" "example" {
  count        = 3
  name         = "example-instance-${count.index}"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}