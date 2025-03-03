# DFIR Tool Installation Script

This repository provides an automated **Bash script** designed to quickly set up and install essential **Digital Forensics and Incident Response (DFIR)** tools on a Linux-based system. The script simplifies the process of installing tools like **Autopsy**, **Nmap**, **Wireshark**, **Suricata**, and **YARA**, essential for cybersecurity and forensic analysis.

## Features

- **Automated Installation**: Easily installs DFIR tools like **Autopsy**, **Nmap**, **Wireshark**, **Suricata**, and **YARA** with a single command.
- **Installation Log**: Tracks installation status, logs successes and failures, and provides a detailed report for troubleshooting.
- **Non-root User Support**: Allows non-root users to capture packets with **Wireshark** by adding them to the `wireshark` group.
- **Snap and APT Integration**: Utilizes both **Snap** and **APT** package managers to install tools efficiently.

## Tools Installed

This script installs the following tools:

- **Autopsy**: A user-friendly, powerful digital forensics platform for analyzing disk images, file systems, and more.
- **Nmap**: A widely-used network scanning tool for discovering hosts and services on a computer network.
- **Wireshark**: A popular network protocol analyzer, essential for packet sniffing and network forensics.
- **Suricata**: A high-performance, open-source network threat detection engine capable of real-time intrusion detection (IDS), intrusion prevention (IPS), and network security monitoring (NSM).
- **YARA**: A tool for identifying and classifying malware samples based on textual or binary patterns.

## Prerequisites

Before running the script, ensure you meet the following requirements:

- **Linux-based system** (Ubuntu/Debian preferred).
- **sudo privileges** for package installations.
- **Snap and APT package managers** installed.
- **Basic familiarity with the command line**.

## Installation Guide

### Clone the Repository

```bash
git clone https://github.com/<your-username>/dfir-tool-installer.git
cd dfir-tool-installer
