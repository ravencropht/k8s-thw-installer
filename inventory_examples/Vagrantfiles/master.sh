#!/bin/bash
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
sudo apt-get install git mc -y
export LC_ALL=C
useradd ravencropht
mkdir -p /home/ravencropht/.ssh
cp /vagrant/authorized_keys /home/ravencropht/.ssh/
chown -R ravencropht /home/ravencropht
chmod 700 /home/ravencropht/.ssh
chmod 600 /home/ravencropht/.ssh/authorized_keys
echo 'ravencropht ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
swapoff --all
sed '/swap/d' -i /etc/fstab