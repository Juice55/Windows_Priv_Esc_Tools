# Security Tools Repository

A curated collection of penetration testing and Active Directory exploitation tools for authorized security assessments.

## 🚀 Quick Start

1. Download `Tool_install.sh`
2. Run the script:
```bash
   chmod +x Tool_install.sh
   ./Tool_install.sh
```
3. Enter your username when prompted (default: `kali`)
4. Tools will be installed to `/home/[username]/tools/`

---

## 📋 Tool Categories

### Active Directory Enumeration & Exploitation
- **BloodHound** - AD path mapping and attack visualization
- **SharpHound** - Data collector for BloodHound analysis
- **Kerbrute** - Kerberos username enumeration and pre-auth bruteforcing
- **PowerView.ps1** - Network and user enumeration in AD environments
- **Rubeus.exe** - Kerberos ticket manipulation (TGT/TGS forging)
- **DomainPasswordSpray.ps1** - Password spraying in AD environments
- **Inveigh.ps1** - LLMNR/NBT-NS/mDNS poisoning for credential capture
- **Snaffler.exe** - Credential hunting on Windows file shares

### Privilege Escalation
- **PowerUp.ps1** - Service enumeration and privilege escalation checks
- **SharpUp.exe** - Windows privilege escalation vulnerability scanner
- **JuicyPotato.exe** - SeImpersonate token exploitation for SYSTEM shell
- **PrintSpoofer.exe (x64)** - Print Spooler service exploitation
- **Invoke-MS16-032.ps1** - MS16-032 Secondary Logon Handle exploit
- **Bypass-UAC.ps1** - UAC bypass techniques
- **EnableAllTokenPrivs.ps1** - Enable all available token privileges
- **SeBackupPrivilege DLLs** - Backup operator privilege abuse (may need recompilation for .NET version)
- **SysinternalsSuite** - Microsoft utilities (PSExec, AccessChk, etc.)

### Credential Harvesting
- **Mimikatz (x86/x64)** - Dump credentials, hashes, and Kerberos tickets
- **LaZagne.exe** - Extract stored passwords from browsers and applications
- **SessionGopher.ps1** - Extract and decrypt saved sessions (SSH, RDP, FTP, etc.)

### Pivoting & Tunneling
- **Chisel** - TCP/UDP tunnel and SOCKS proxy
- **Plink.exe** - SSH tunneling for Windows
- **Ligolo-ng** - Layer 4 network pivoting

### Utilities
- **Netcat (nc64.exe)** - Network Swiss Army knife for shells and data transfer
- **Eyewitness** - Web service screenshot and reporting tool

---

## 📂 Installation Structure
```
/home/[username]/tools/
├── windows/          # Windows exploitation tools
├── ligolo/           # Pivoting tools
└── noPac/            # Active Directory exploitation
```

---

## 📚 Command Guidelines

Documentation for common commands and usage patterns for each tool can be found in the `/command-guidelines/` directory:

- `active-directory/` - AD enumeration and exploitation tools
- `privilege-escalation/` - Windows privilege escalation techniques
- `credentials/` - Credential harvesting and dumping
- `pivoting/` - Network tunneling and pivoting
- `utilities/` - General purpose tools

---

## ✅ To-Do

- [ ] Complete command guideline documentation for all tools
- [ ] Add version tracking
- [ ] Create quick-reference cheat sheets
- [ ] Add troubleshooting guide

---

## ⚖️ Legal Notice

**AUTHORIZED USE ONLY**

This repository contains penetration testing tools intended for:
- Authorized security assessments with explicit written permission
- Capture The Flag (CTF) competitions
- Personal lab environments

### Disclaimer
These tools are provided **"AS IS"** for educational and authorized testing purposes only. 

⚠️ **Unauthorized access to computer systems is illegal under:**
- Computer Fraud and Abuse Act (CFAA) - United States
- Computer Misuse Act - United Kingdom  
- Equivalent laws in other jurisdictions

### No Liability
The repository owner assumes **no responsibility** for:
- Misuse of these tools
- Damages caused by unauthorized testing
- Illegal activities conducted with these tools

**Users are solely responsible** for ensuring they have explicit written permission before testing any systems.

### Your Responsibility
By downloading or using these tools, you acknowledge that:
- You will only use them on systems you own or have written authorization to test
- You understand the legal implications of unauthorized system access
- You accept full responsibility for your actions

---

**Built for ethical hackers. Use responsibly. 🛡️**
