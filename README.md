# 🌐 NetSweep: Automated Network Reconnaissance Pipeline

> **Lightweight Bash Pipeline Wrapping Nmap for Automated Network Discovery & Penetration Testing Recon**  
> Streamlined host ping discovery, multi-stage port scanning, service version fingerprinting, and automated forensic logging.

<p align="center">
  <img src="https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Bash" />
  <img src="https://img.shields.io/badge/Engine-Nmap-002B36?style=for-the-badge&logo=linux&logoColor=white" alt="Nmap" />
  <img src="https://img.shields.io/badge/Security-Reconnaissance-red?style=for-the-badge" alt="Security" />
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License MIT" />
</p>

---

## ⚡ Overview

During penetration testing and security audits, manual Nmap execution across multiple stages (host discovery, top ports, full banner grab, OS fingerprinting) is repetitive and prone to missing output persistence.

**NetSweep** standardizes network reconnaissance into an automated Bash pipeline that validates inputs, creates timestamped forensic audit logs in a structured `results/` directory, and performs systematic multi-phase host scanning.

---

## 🛠️ Reconnaissance Stages

```mermaid
flowchart LR
    A["Target Input<br/>(IP or CIDR / FQDN)"] --> B["1. Host Ping Sweep<br/>(Identify Active Targets)"]
    B --> C["2. Top Port Fast Scan<br/>(Identify Open Vectors)"]
    C --> D["3. Service & OS Fingerprint<br/>(-sV -O Deep Inspection)"]
    D --> E["Timestamped Audit Log<br/>(results/target_scan_*.txt)"]
```

---

## 🚀 Usage & Execution

### Prerequisites
Ensure `nmap` and `bash` are installed on your system:
```bash
# Ubuntu / Debian
sudo apt update && sudo apt install -y nmap

# macOS (Homebrew)
brew install nmap
```

### Run NetSweep
```bash
git clone https://github.com/krishujeniya/NetSweep.git
cd NetSweep
chmod +x Scan.sh
./Scan.sh
```

### Example Interactive Session
```text
=== Automated Network Scanner ===
Enter target IP or domain: 192.168.1.1
Starting scan on 192.168.1.1...
Results will be saved to results/192_168_1_1_scan_20261102_120000.txt

[Phase 1] Performing host discovery ping sweep...
[Phase 2] Scanning common TCP/UDP service ports...
[Phase 3] Fingerprinting service versions and OS signatures...
[✓] Scan complete. Output persisted to results/192_168_1_1_scan_20261102_120000.txt
```

---

## 📁 Repository Structure

```
├── Scan.sh         # Executable bash network reconnaissance pipeline
├── results/        # Automated output directory for scan reports (git-ignored)
├── LICENSE         # MIT Open-Source License
└── README.md       # Technical documentation
```

---

## 📄 License & Legal Notice

Distributed under the [MIT License](LICENSE). 

> **Disclaimer**: This tool is designed strictly for authorized penetration testing, internal infrastructure auditing, and educational security research. Unauthorized scanning of third-party networks without explicit consent is illegal.
