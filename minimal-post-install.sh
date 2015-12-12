#!/bin/bash
# this line installs 4 ways to get remote files, then required files to install
# vmware tools in case the install is in an ESXi based VM
yum install -y git ftp wget curl screen kernel-headers kernel-devel perl perl-devel net-tools gcc mlocate  cockpit
systemctl enable cockpit.socket && systemctl start cockpit
firewall-cmd --permanent --zone=public --add-service=cockpit && firewall-cmd --reload