# Cyberlab - Homelab Infrastructure

Welcome to **Cyberlab** — my personal homelab playground for testing, learning, and breaking stuff (so you don’t have to).  
This repo documents the setup, configs, and automation for my homelab environment.

---

## 🖥️ Hardware Overview

### Dell PowerEdge R320 (X2)
- **Specs:**  
  - ~~Xeon E5-2407~~
  - Xeon E5-2470 v2 (MERRY CHRISTMAS)
  - ~~32GB RAM DDR4~~
  - 96GB RAM DDR4  (MERRY CHRISTMAS)
  - 8 × 1TB SAS HDD
  - Intel X520-DA2 (MERRY 10 GIGABIT CHRISTMAS)

- **Node 1 – Proxmox ARR**  
  - Nvidia Quadro P600 GPU passthrough  
  - LXC containers (Arr stack)  
  - Linux KVM (Kali VM)  
  - RAIDZ10 → max performance (Plex/Jellyfin media servers)
 
- **Node 2 – Proxmox FILES**
  - Minecraft Servers
  - PBS
  - Fileshare

- **Node 3 – Proxmox PBS**  
  - Automated daily, weekly, monthly backups
  - 1 TB allocated, aggressive purge rules to keep 4 backups per vm/lxc.

---

### Custom Build #1
- DECOMMISSIONED, moved all servers to files
- ~~Intel i5 (4 cores), 32GB RAM~~
- ~~2 × 256GB SSD~~
- ~~Roles: **Minecraft servers** + **Windows AD lab**~~

---

### Rackmounted PC (Workhorse)
- Intel i7-9700K (OC 4.9–5.0 GHz, custom water loop)  
- RTX 2070 (moved to pcie 16x slot after using it in pcie4 for half a year 🫢)
- 32GB DDR4 RAM  
- ~~Mixed drives for flexible workloads~~
- Removed 1 TB HDD, added 1 256GB SSD, setup 4 drive raid pool in RAID10 for /home/ partition.
- Reinstalled Arch for latest drivers and to match new laptop.

---

### Networking & Power
- Cisco Catalyst 2960-S switch  
- APC SMT1500 UPS  

---

## 📸 Screenshots

### Initial Setup
![Initial Setup](./Screenshots/init.jpg)
