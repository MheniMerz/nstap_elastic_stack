variable "KVM_HOST_USER" {
  type = string
}

variable "KVM_HOST_IP" {
  type = string
}
variable "VM_HOSTNAME" {
  default = "logstash-02"
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
  #1Tb
  default = 1024*1024*1024*1024
}

variable "VM_USER" {
  default = "mheni"
  type = string
}

variable "VM_IMG_FORMAT"{
  default = "qcow2"
  type = string
}

variable "VM_IMG_URL" {
  default = "http://cloud-images.ubuntu.com/releases/bionic/release-20191008/ubuntu-18.04-server-cloudimg-amd64.img"
  type = string
}

variable "VM_CIDR_RANGE"{
  default = "192.168.0.0/24"
  type = string
}
