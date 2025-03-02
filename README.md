# DFIR Tool Installation Script

This repository provides an automated **Bash script** designed to quickly set up and install essential **Digital Forensics and Incident Response (DFIR)** tools on a Linux-based system. The script simplifies the process of installing tools like **Autopsy**, **Nmap**, and **Wireshark**, essential for cybersecurity and forensic analysis.

## 🚀 Features

- **Automated Installation**: Easily installs DFIR tools like **Autopsy**, **Nmap**, and **Wireshark** with a single command.
- **Installation Log**: Tracks installation status, logs successes and failures, and provides a detailed report for troubleshooting.
- **Non-root User Support**: Allows non-root users to capture packets with **Wireshark** by adding them to the `wireshark` group.
- **Snap and APT Integration**: Utilizes both **Snap** and **APT** package managers to install tools efficiently.

## ⚙️ Tools Installed

This script installs the following tools:

1. **Autopsy**: A user-friendly, powerful digital forensics platform for analyzing disk images, file systems, and more.
2. **Nmap**: A widely-used network scanning tool for discovering hosts and services on a computer network.
3. **Wireshark**: A popular network protocol analyzer, essential for packet sniffing and network forensics.

## 📋 Prerequisites

Before running the script, ensure you meet the following requirements:

- A **Linux-based** system (Ubuntu/Debian preferred).
- **sudo** privileges for package installations.
- **Snap** and **APT** package managers installed.
- Basic familiarity with the command line.

## 🚶‍♂️ Installation Guide

### 1. Clone the Repository

Start by cloning the repository to your local machine:

```bash
git clone https://github.com/<your-username>/dfir-tool-installer.git
cd dfir-tool-installer
