#!/bin/bash
echo "============================================================"
echo "        LINUX HEALTH MONITORING DASHBOARD"
echo "============================================================"
echo
echo
echo "System Information"
echo "------------------------------------------------------------"
hostname_name=$(hostname)
echo "Hostname : $hostname_name"
echo
current_user=$(whoami)
echo "Current User : $current_user"
echo
kernel_version=$(uname -r)
echo "Kernel Version : $kernel_version"
echo
current_date=$(date)
echo "Current Date : $current_date"
echo
echo "------------------------------------------------------------"
echo
echo "CPU Information"
echo "------------------------------------------------------------"
cpu_usage=$(top -bn1 | grep "Cpu(s)")
echo
echo "CPU Usage : $cpu_usage"
echo
load_average=$(uptime | awk -F'load average: ' '{print $2}')
echo "Load Average  : $load_average"
echo
echo "------------------------------------------------------------"
echo
echo "Memory Information"
echo "------------------------------------------------------------"
total_memory=$(free -h | awk '/^Mem:/ {print $2}')
echo "Total Memory : $total_memory"
echo
used_memory=$(free -h | awk '/^Mem:/ {print $3}')
echo "Used Memory : $used_memory"
echo
free_memory=$(free -h | awk '/^Mem:/ {print $4}')
echo "Free Memory : $free_memory"
echo
echo "------------------------------------------------------------"
echo
echo "Disk Information"
echo "------------------------------------------------------------"
disk_usage=$(df -h / | awk 'NR==2 {print $5}')
echo "Disk Usage : $disk_usage"
echo
echo "------------------------------------------------------------"
echo "Network Information"
echo "------------------------------------------------------------"
ip_address=$(hostname -I)
echo "IP Address : $ip_address"
echo
echo "------------------------------------------------------------"

echo "Alerts"
echo "------------------------------------------------------------"
cpu_usage=75
if [ "$cpu_usage" -gt 80 ]
then
    echo "WARNING: High CPU Usage"
else
    echo "CPU Usage is Normal"
fi


memory_usage=68
if [ "$memory_usage" -gt 80 ]
then
    echo "WARNING: High Memory Usage"
else
    echo "Memory Usage is Normal"
fi

disk_usage=95
if [ "$disk_usage" -gt 90 ]
then
    echo "WARNING: Disk Usage Critical"
else
    echo "Disk Usage Normal"
fi
echo "------------------------------------------------------------"
echo "------------------------------------------------------------"
