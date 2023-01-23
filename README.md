# creating elastic stack cluster with terraform

## perpare the host machines

install virtualization packages

```bash
sudo apt install virt-manager virt-top libguestfs-tools  -y
````

disable apparmor or selinux (depending on the linux distribution) for qemu

```bash
echo "security_driver" >> /etc/libvirt/qemu.conf
sudo systemctl restart libvirt-guests.service
sudo systemctl restart libvirtd.service


```
## install terraform on your workstation or laptop

```bash
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update && sudo apt install terraform

```

download and install the required terraform providers

```bash
mkdir -p $HOME/.local/share/terraform/plugins/registry.terraform.io/dmacvicar/libvirt/0.6.3/linux_amd64/

cd !$

wget https://github.com/dmacvicar/terraform-provider-libvirt/releases/download/v0.6.3/terraform-provider-libvirt-0.6.3+git.1604843676.67f4f2aa.Ubuntu_20.04.amd64.tar.gz

```
