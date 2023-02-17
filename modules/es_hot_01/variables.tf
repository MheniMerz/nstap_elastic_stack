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
  default = "elasticsearch-hot-01"
  type = string
}

variable "VM_MEMORY"{
  #60GB
  default = 61440
}

variable "VM_CPU"{
  # 22 Cores
  default = 22
}

variable "VM_DISK_SIZE"{
  #140G
  default = 1024*1024*1024*140
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
