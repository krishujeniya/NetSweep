#!/bin/bash

# Automated Network Scanner using Nmap
# Author: [Your Name]
# Date: [Date]

echo "=== Automated Network Scanner ==="

# Create results directory if it doesn't exist
mkdir -p results

# Get target input
read -p "Enter target IP or domain: " target

if [ -z "$target" ]; then
    echo "Error: No target specified"
    exit 1
fi

# Clean the target name for filename
clean_target=$(echo "$target" | tr -d './' | tr '.' '_')
output_file="results/${clean_target}_scan_$(date +%Y%m%d_%H%M%S).txt"

echo "Starting scan on $target..."
echo "Results will be saved to $output_file"

# Perform basic scans
echo -e "\n=== Ping Scan ===" | tee -a "$output_file"
nmap -sn "$target" | tee -a "$output_file"

echo -e "\n=== Quick Port Scan ===" | tee -a "$output_file"
nmap -T4 -F "$target" | tee -a "$output_file"

echo -e "\n=== Standard Service Detection ===" | tee -a "$output_file"
nmap -sV "$target" | tee -a "$output_file"

echo -e "\n=== OS Detection ===" | tee -a "$output_file"
nmap -O "$target" | tee -a "$output_file"

echo -e "\nScan completed! Results saved to $output_file"
