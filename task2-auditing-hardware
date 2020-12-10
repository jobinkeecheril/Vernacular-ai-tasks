#!/bin/bash
echo OS Version:
cat /etc/os-release | grep -oP "[0-9]+" | head -1
echo --------------------
echo Kernel Version:
uname -r
echo --------------------
echo CPU - Virtual cores:
lscpu | grep "CPU(s)" | grep -oP [0-9]+ | head -1
echo --------------------
echo CPU - Clock speed:
lscpu | grep "CPU MHz" | grep -oP [0-9.0-9]+
echo --------------------
echo CPU - Architecture:
uname -m
echo --------------------
echo RAM:
grep MemTotal /proc/meminfo | awk '{print $2 / 1024000}'
echo --------------------
echo Networking - OS Firewall:
firewall-cmd --reload
echo 1. Allowed ports:
firewall-cmd --list-ports
echo --------------------
echo 2. Allowed protocols:
firewall-cmd --list-protocols
echo --------------------
echo Disk Information:
lsblk -rno name,size,mountpoint,fstype | awk ' {print}'
echo --------------------
