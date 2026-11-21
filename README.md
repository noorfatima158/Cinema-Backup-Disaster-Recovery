# Cinema-Backup-Disaster-Recovery
# Automated Data Backup and Disaster Recovery for Cinema Management

## Overview
Automated daily backup and point-in-time disaster recovery implementation for a Cinema Management system on **Windows Server 2022 (Server Core)** using `wbadmin` and a dedicated secondary virtual disk.

## System Configuration
- **OS:** Windows Server 2022 Standard (Server Core)
- **Hostname:** `CINEMA-MAIN`
- **Time Zone:** `(UTC+05:00) Islamabad, Karachi`
- **Protected Data:** `C:\CinemaData` (`db.sql`, `list.csv`)
- **Backup Target:** Dedicated `20 GB` Virtual Disk (`E:\`, NTFS)
- **Schedule:** Automated Daily Backup at `23:00` (`11:00 PM`)

## Scripts Included
1. `01-setup-storage-and-data.ps1` — Creates `C:\CinemaData`, installs `Windows-Server-Backup`, and formats the 20 GB backup disk as `E:\`.
2. `02-configure-automated-backup.ps1` — Schedules daily backups at `23:00` and runs an initial on-demand backup.
3. `03-disaster-recovery-test.ps1` — Simulates accidental deletion and restores data from `E:\`.
