terraform{
  required_providers {
    libvirt = {
      source = "dmacvicar/libvirt"
        version = "0.6.3"
    }
  }
}

module "kibana"{
  source = "./modules/kibana"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.39"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_master"{
  source = "./modules/es_master"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.37"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_hot_01"{
  source = "./modules/es_hot_01"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.37"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_hot_02"{
  source = "./modules/es_hot_02"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.37"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_warm_01"{
  source = "./modules/es_warm_01"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.38"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_warm_02"{
  source = "./modules/es_warm_02"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.38"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "es_cold_01"{
  source = "./modules/es_cold_01"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.39"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "logstash_01"{
  source = "./modules/logstash_01"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.40"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

module "logstash_02"{
  source = "./modules/logstash_02"
  HTTP_PROXY = var.HTTP_PROXY
  KVM_HOST_USER = var.KVM_HOST_USER
  KVM_HOST_IP = "10.11.200.40"
  KVM_HOST_SSH_KEY = var.KVM_HOST_SSH_KEY
  VM_USER = var.VM_USER
  VM_IMG_FORMAT = var.VM_IMG_FORMAT
  VM_IMG_URL = var.VM_IMG_URL
  VM_CIDR_RANGE = var.VM_CIDR_RANGE
}

