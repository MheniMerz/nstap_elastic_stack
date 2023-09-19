variable "KVM_HOST_USER" {
  default = "antd"
  type = string
}

variable "KVM_HOST_SSH_KEY"{
  default = "/home/mheni/.ssh/id_rsa"
  type = string
}

variable "HTTP_PROXY"{
  default = "http://10.11.200.200:3131/"
  type = string
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

