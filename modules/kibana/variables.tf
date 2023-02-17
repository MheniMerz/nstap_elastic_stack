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
  default = "kibana"
  type = string
}

variable "VM_MEMORY"{
  #8GB
  default = 8192
}

variable "VM_CPU"{
  # 4 Cores
  default = 4
}

variable "VM_DISK_SIZE"{
  #40G
  default = 1024*1024*1024*40
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
