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

