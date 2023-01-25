# creating elastic stack cluster with terraform

## architecture

we will use the ELK(Elasticsearch, Logstash, Kibana) stack to collect and store network logs in order to later apply machine learning algorithms to have better visibility and enhance network security.

we will deploy 5 storage nodes (Elasticsearch) following the Hot, warm, and cold data storage strategy which categorizes data based on access frequency (hot data being the most accessed and cold data the lease accesssed data), in this implementation hot data is stored on SSD drives and warm and cold data is stored on HDD drives.

we will also deploy 2 data processing nodes (Logstash), 2 messaging queues (Kafka) and one dashboard node (Kibana).

all the nodes will run on virtual machines using qemu and libvirt virtualization tools on top of linux (Ubuntu20.04) baremetal hosts as shown in figure 1

![architecture](assets/architecture.png "Figure 01: ELK deployment architecture")
## perpare the host machines

install virtualization packages

```bash
sudo apt install virt-manager virt-top libguestfs-tools  -y
````

disable apparmor or selinux (depending on the linux distribution) for qemu, 

```bash
echo 'security_driver="none"' >> /etc/libvirt/qemu.conf
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
