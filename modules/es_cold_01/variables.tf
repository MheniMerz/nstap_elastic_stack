variable "KVM_HOST_USER" {
  type = string
}

variable "KVM_HOST_IP" {
  type = string
}

variable "KVM_HOST_SSH_KEY"{
  type = string
}

variable "HTTP_PROXY"{
  type = string
}

variable "VM_HOSTNAME" {
  default = "elasticsearch-cold-01"
  type = string
}

variable "VM_MEMORY"{
  #36GB
  default = 36864
}

variable "VM_CPU"{
  # 30 Cores
  default = 30
}

variable "VM_DISK_SIZE"{
  #800G
  default = 1024*1024*1024*800
}

variable "VM_USER" {
  type = string
}

variable "VM_IMG_FORMAT"{
  type = string
}

variable "VM_IMG_URL" {
  type = string
}

variable "VM_CIDR_RANGE"{
  type = string
}
