
provider "libvirt"{
  uri = "qemu+ssh://${var.kvm_host_user}@${$var.kvm_host_ip}/system"
}

data "template_file" "user_data" {
  template = file("${path.module}/cloud_init.cfg")
  vars = {
    VM_USER = var.VM_USER
  }
}

data "template_file" "network_config"{
  template = file("${path.module}/network_config.cfg")
}

resource "libvirt_pool" "vm"{
  name = "${var.VM_HOSTNAME}_pool"
  type = "dir"
  path = "/libvirt_pools/libvirt-pool-${var.VM_HOSTNAME}"
}

resource "libvirt_volume" "base_volume"{
  name = "${var.VM_HOSTNAME}_base_volume.${var.VM_IMG_FORMAT}"
  pool = libvirt_pool.vm.name
  source = var.VM_IMG_URL
  format = var.VM_IMG_FORMAT
}

resource "libvirt_volume" "vm"{
  name = "${var.VM_HOSTNAME}_volume.${var.VM_IMG_FORMAT}"
  pool = libvirt_pool.vm.name
  format = var.VM_IMG_FORMAT
  size = var.VM_DISK_SIZE
  base_volume_id = libvirt_volume.base_volume.id
}

resource "libvirt_cloudinit_disk" "cloudinit"{
  name 			= "${var.VM_HOSTNAME}_cloudinit.iso"
  user_data 		= data.template_file.user_data.rendered
  network_config 	= data.template_file.network_config.rendered
  pool			= libvirt_pool.vm.name
}

resource "libvirt_domain" "vm"{
  name = "${var.VM_HOSTNAME}"
  memory = "${var.VM_MEMORY}"
  vcpu = "${var.VM_CPU}"

  cloudinit = "${libvirt_cloudinit_disk.cloudinit.id}"
  network_interface{
    network_id = "${libvirt_network.vm_public_network.id}"
    network_name = "${libvirt_network.vm_public_network.name}"
  }

  console {
    type = "pty"
    target_port = "0"
    target_type ="serial"
  }

  disk {
    volume_id = "${libvirt_volume.vm.id}"
  }
}

resource "libvirt_network" "vm_public_network"{
  name = "${var.VM_HOSTNAME}_network"
  mode = "nat"
  domain = "${var.VM_HOSTNAME}.local"
  addresses = ["${var.VM_CIDR_RANGE}"]
  dhcp{
    enabled = true
  }
  dns{
    enabled = true
  }
}

