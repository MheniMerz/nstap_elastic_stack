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
  default = "logstash-02"
  type = string
}

variable "VM_MEMORY"{
  #32GB
  default = 32768
}

variable "VM_CPU"{
  # 16 Cores
  default = 16
}

variable "VM_DISK_SIZE"{
  #140G
  default = 1024*1024*1024*320
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
