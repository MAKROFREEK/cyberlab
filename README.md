# Cyberlab - Homelab Infrastructure

Welcome to **Cyberlab** — my personal homelab playground for testing, learning, and breaking stuff (so you don’t have to).  
This repo documents the setup, configs, and automation for my homelab environment.

## 🖥️ Hardware Overview

- **Dell PowerEdge R240 (x2)**  
  - 8 × 1TB HDD each
  - 32GB ram each
  - Xeon E5-2407
  - One running **Proxmox VE** with:
    - Nvidia Quadro P600
    - LXC containers (Arr stack)  
    - Linux KVM (Kali VM)
    - Using RAIDZ10 for maximum speed for jellyfin/plex
      
  - One running **Proxmox Backup Server (PBS)**  
    - ZFS RAID pool for backups
    - Samba/Nextcloud fileshare
    - Daily, weekly, monthly backups saved
    - Using RAIDZ6 for double parity and max storage

- **Custom Build #1**  
  - Intel i5 (4 cores), 32GB RAM  
  - 2 × 256GB SSD  
  - Dedicated to **Minecraft servers** + **Windows AD lab**  

- **Rackmounted PC (daily driver / powerhouse)**  
  - Intel i7-9700K (OC @ 4.9–5.0 GHz, custom water loop)  
  - RTX 2070  
  - 32GB DDR4 RAM
  - Various drives of various space for various reasons. Various.

- **Networking & Power**  
  - Cisco Catalyst 2960-S switch  
  - APC SMT1500 UPS  

---


## 📸 Screenshots

### Initial Setup
![Initial Setup](./Screenshots/init.jpg)
