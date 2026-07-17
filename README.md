# 🖥️ Linux Health Monitoring Dashboard

A lightweight **Bash-based Linux Health Monitoring Dashboard** that provides real-time insights into the health and 
performance of a Linux system. The dashboard collects key system metrics directly from the operating system and presents 
them in a clean, terminal-based interface, making it easy to monitor system resources and identify potential issues.

This project was developed as a hands-on learning experience in **Linux Administration**, **Bash Scripting**, **AWS EC2**, 
and **Git/GitHub**.

---

## 📖 Project Overview

System administrators and DevOps engineers rely on monitoring tools to keep servers healthy and ensure applications run 
efficiently. This project demonstrates the core concepts behind such monitoring tools by gathering important system 
information using native Linux commands and displaying it in a structured dashboard.

Rather than using third-party monitoring software, this dashboard is built entirely with **Bash scripting**, 
showcasing how powerful Linux command-line utilities can be combined to automate system health checks.

---

## ✨ Features

* 🖥️ Displays system information

  * Hostname
  * Current user
  * Operating system
  * Kernel version
  * Current date and time

* ⚙️ Monitors CPU performance

  * CPU usage
  * System load average

* 💾 Monitors memory usage

  * Total memory
  * Used memory
  * Free memory

* 💿 Monitors disk usage

  * Total disk size
  * Used space
  * Available space
  * Disk usage percentage

* 🌐 Displays network information

  * Private IP address

* 🚨 Health alert system

  * CPU usage threshold
  * Memory usage threshold
  * Disk usage threshold

* 📄 Clean and organized terminal output

---

## 🛠️ Technologies Used

* Bash Shell Scripting
* Linux
* Amazon Linux 2023
* AWS EC2
* Git
* GitHub

---

## 📂 Project Structure

```text
Linux-Health-Monitor/
│
├── health_dashboard.sh      # Main dashboard script
├── README.md                # Project documentation
├── screenshots/             # Dashboard screenshots
│   └── dashboard.png
├── logs/                    # Log files (future enhancement)
└── .gitignore
```

---

## ⚙️ How It Works

The dashboard executes standard Linux commands to collect system information. 

The output is processed using Bash utilities such as `awk`, `grep`, and command substitution before being displayed in a 
structured format.

Some of the commands used include:

| Command       | Purpose                                     |
| ------------- | ------------------------------------------- |
| `hostname`    | Display system hostname                     |
| `whoami`      | Display current logged-in user              |
| `uname -r`    | Display Linux kernel version                |
| `date`        | Display current date and time               |
| `free -h`     | Retrieve memory usage                       |
| `df -h`       | Retrieve disk usage                         |
| `uptime`      | Retrieve load average                       |
| `hostname -I` | Display IP address                          |
| `top`         | Retrieve CPU usage                          |
| `awk`         | Extract specific fields from command output |
| `grep`        | Filter required information                 |

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/janhavisudame/Linux-Health-Monitor.git
```

### Navigate to the project directory

```bash
cd Linux-Health-Monitor
```

### Give execute permission

```bash
chmod +x health_dashboard.sh
```

### Run the dashboard

```bash
./health_dashboard.sh
```

---

## 📸 Sample Output

```text
============================================================
           LINUX HEALTH MONITORING DASHBOARD
============================================================

System Information
------------------------------------------------------------
Hostname         : ip-172-31-15-168
Current User     : ec2-user
Operating System : Amazon Linux 2023
Kernel Version   : 6.x
Current Date     : Fri Jul 17

CPU Information
------------------------------------------------------------
CPU Usage        : 12%
Load Average     : 0.14, 0.18, 0.22

Memory Information
------------------------------------------------------------
Total Memory     : 964 MiB
Used Memory      : 312 MiB
Free Memory      : 652 MiB

Disk Information
------------------------------------------------------------
Disk Usage       : 30%

Network Information
------------------------------------------------------------
IP Address       : 172.31.xx.xx

Alerts
------------------------------------------------------------
No Alerts

============================================================
```

---

## 🎯 Learning Outcomes

Through this project, I gained practical experience with:

* Bash scripting fundamentals
* Linux system administration
* Linux file permissions
* Process and resource monitoring
* Text processing using `awk` and `grep`
* Git version control
* GitHub project management
* Working with Amazon EC2 instances
* Writing technical documentation

---




