# TechCorp Homelab

> Enterprise IT infrastructure simulation built from scratch.  
> Covers Active Directory, Linux, pfSense, VLANs, Monitoring, Security, and Automation.

---

## 🏢 About the Project

TechCorp is a simulated 50-employee company with 6 departments:
IT, HR, Finance, Sales, Marketing, and Management.

This homelab replicates a real enterprise environment including:
- Windows Server 2022 domain infrastructure
- Linux servers (Ubuntu Server)
- Network segmentation with VLANs
- Firewall and VPN with pfSense
- Centralized monitoring and logging
- Security hardening and SIEM
- PowerShell and Bash automation

Built on VirtualBox — fully documented for portfolio and interview preparation.

---

## 🗺️ Architecture

## ✅ Phase 2 Summary — Active Directory

- Promoted Windows Server 2022 to Domain Controller (**techcorp.local**), static IP 192.168.10.10
- Designed OU structure across 6 departments: IT, HR, Finance, Sales, Marketing, Management
- Bulk-provisioned ~28 users via CSV + PowerShell automation
- Created and populated department Security Groups (GG_IT, GG_HR, etc.) via script
- Enforced domain-wide GPO security baseline:
  - Password Policy: 10-char minimum, complexity required, 90-day rotation, 5-password history
  - Account Lockout Policy: 5 failed attempts → 15-minute lockout
- **Key troubleshooting:** resolved a GPO precedence conflict — password/lockout policy 
  must be set on the *Default Domain Policy* at domain root, not a separately linked GPO, 
  due to how Windows applies Local → Site → Domain → OU policy order

**Scripts:** [`scripts/powershell/`](scripts/powershell/)

---

## 📋 Phases

| Phase | Topic | Status |
|-------|-------|--------|
| 0 | GitHub + Documentation Setup | ✅ Done |
| 1 | Network Design & VirtualBox Setup | ✅ Done |
| 2 | Windows Server 2022 — AD, DNS, DHCP | ✅ Done |
| 3 | File Server + NTFS + DFS | ⏳ Pending |
| 4 | Ubuntu Server — SSH, Samba, Nginx | ⏳ Pending |
| 5 | pfSense — Firewall, VLANs, VPN | ⏳ Pending |
| 6 | Monitoring — Zabbix / Grafana | ⏳ Pending |
| 7 | Security — Hardening + Wazuh SIEM | ⏳ Pending |
| 8 | Automation — PowerShell + Bash | ⏳ Pending |
| 9 | Capstone — Incident Response | ⏳ Pending |

---

## 🖥️ Lab Environment

| Component | Detail |
|-----------|--------|
| Host Machine | ASUS TUF A15 — Ryzen 7 4800H, 16GB RAM, 512GB NVMe |
| Hypervisor | VirtualBox |
| Domain | techcorp.local |
| OS Used | Windows Server 2022, Windows 11, Ubuntu Server 22.04 |
| Network | 192.168.10.0/24 (internal lab network) |

---

## 📁 Repository Structure
