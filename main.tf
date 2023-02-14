terraform{
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
        version = "0.6.3"
    }
  }
}

variable "VM_USER" {
  default = "mheni"
  type = string
}

variable "VM_IMG_URL" {
  default = "http://cloud-images.ubuntu.com/releases/bionic/release-20191008/ubuntu-18.04-server-cloudimg-amd64.img"
  type = string
}

variable "VM_IMG_FORMAT"{
  default = "qcow2"
  type = string
}

variable "VM_CIDR_RANGE"{
  default = "192.168.0.0/24"
  type = string
}

module "es_hot_01"{
  source = "./modules/es_hot_01"
}

module "es_hot_02"{
  source = "./modules/es_hot_02"
}
