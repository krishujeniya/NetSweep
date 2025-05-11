# NetSweep

# Automated Network Reconnaissance Tool

A simple Bash script that automates basic Nmap scanning operations for network reconnaissance.

## Features
- Ping scanning to identify live hosts
- Quick port scanning
- Service version detection
- OS detection
- Automated result saving

## Requirements
- Linux/macOS system
- Nmap installed (`sudo apt install nmap` on Ubuntu)
- Bash shell

## Usage
1. Make the script executable:
   ```bash
   chmod +x scan.sh
   ```
2. Run the script:
   ```bash
   ./scan.sh
   ```
3. Enter target IP or domain when prompted

## Output
Scan results are saved in the `results/` directory with timestamped filenames.

