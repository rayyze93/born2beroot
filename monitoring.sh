#!/bin/bash

wall "#Architecture: $(uname -a)
#CPU physical: $(grep "physical id" /proc/cpuinfo | uniq | wc -l)
#vCPU: $(grep "processor" /proc/cpuinfo | wc -l)
#Memory Usage: $(free -m | awk 'NR==2{printf "%s/%sMB (%.2f%%)", $3,$2,$3*100/$2 }')
#Disk Usage: $(df -h | awk '$NF=="/"{printf "%d/%dGB (%s)", $3,$2,$5}')
#CPU load: $(top -bn1 | grep '%Cpu' | cut -c 9- | xargs | awk '{printf("%.1f%%"), $1 + $3}')
#Last boot: $(who -b | awk '{print $3" "$4}')
#LVM use: $(lsblk |grep lvm | awk '{if ($1) {print "yes";exit;} else {print "no"} }')
#Connexions TCP: $(netstat -an | grep ESTABLISHED |  wc -l) ESTABLISHED
#User log: $(users | wc -w)
#Network: IP $(hostname -I) ($(ip a | grep link/ether | awk '{print $2}'))
#Sudo: $(journalctl _COMM=sudo | grep COMMAND | wc -l) cmd"
