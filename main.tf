 provider "yandex" {
   token = var.yc_token
   cloud_id  = "b1ga8hp5qimcnoglaoe9"
   folder_id = "b1gd90e13r1hhqi7jflu"
   zone      = "ru-central1-a"
  }


resource "yandex_compute_instance" "vm-test" {
  name                      = "vm"
  zone                      = "ru-central1-a"
  hostname                  = "vm1.netology.cloud"
  allow_stopping_for_update = true

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id    = "fd864gbboths76r8gm5f"
      type        = "network-nvme"
      size        = "10"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.subnet-1.id
    nat       = true
  }
}


resource "yandex_vpc_network" "network-1" {
  name = "network1"
}

resource "yandex_vpc_subnet" "subnet-1" {
  name           = "subnet1"
  zone           = "ru-central1-a"
  network_id     = yandex_vpc_network.network-1.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}


