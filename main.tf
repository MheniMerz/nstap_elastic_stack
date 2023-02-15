terraform{
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
        version = "0.6.3"
    }
  }
}

module "es_hot_01"{
  source = "./modules/es_hot_01"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.39"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_hot_02"{
  source = "./modules/es_hot_02"
}
