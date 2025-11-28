# Security Tools Repository
## How to Use
To use just download the Tool_install.sh script, and run it. 
It will prompt for what username you use. default is kali

## Tools in this Repo
There are various tools installed with this. This is the list of the tools and their uses:
### 1. Eyewitness
    Used for convering nmap scans into a report.
### 2. Bloodhound
    used to ingest AD data from Sharphound for a graph and uses.
### 3. Kerbrute
    A tool to quickly bruteforce and enumerate valid Active Directory accounts through Kerberos Pre-Authentication.
### 4. Invoke-MS16-032.ps1
    Used for privilege escalation on windows.
### 5. BypassUAC.ps1
    Bypasses UAC for privilege escalation on windows.
### 6. PowerUp.ps1
    Enumerate and abuse services, etc for privilege escalation.
### 7. SharpHound
    Tool to gather data for Bloodhound to ingest and analyse.
### 8. SysinteralSuite
    Contains windows tools commonly used, good for escalation in some cases.
### 9. Chisel
    Used to pivot to other subnets if needed.
### 10. DomainPasswordSpray.ps1
    Password spraying script to spray for passwords in an AD enviroment.
### 11. EnableAllTokenPrivs.ps1
    Enables all tokens for disabled privileges on current user.
### 12. Inveigh.ps1
    Used to grab passwords on a domain.
### 13. JuicyPotato.exe
    Escalate privileges if you have the SEImpersonate token, launchs system shell.
### 14. Lazagne.exe
    Grabs stored credentals in the browser.
### 15. Mimikatz.exe (x64/x32)
    Dump credentals, etc. for privilege escalation.
### 16. Netcat
    Netcat which is useful for shells, or exfiling data.
### 17. Plink.exe
    Used for remote SSH tunneling
### 18. PowerView.ps1
    Network and user enumeration in AD
### 19. PrintSpoofer.exe (x64)
    Used to escalate privileges, impersonates system to run command. Good for system shells
### 20. Rubeus.exe
    Used to get TGT and forging tickets for privilege escalation
### 21. SeBackupPrivilegeCmdLets.dll & SEBackupPrivilegeUtils.dll
    These DLL's are used to get backup privileges, good if a backup is needed to pull data off of.
    You may need to compile from the original if the .NET version doesnt match
### 22. SessionGopher.ps1
    Finds saved sessions and decrypts it. like FTP, SSH, Etc.
### 23. Sharpup.exe
    Checks for privilege escalation options
### 24. Snaffler.exe
    used to find credentials on windows machines

## Legal Notice

This repository contains penetration testing tools for my personal use in **authorized security assessments and CTF competitions only**.

**DISCLAIMER**: These tools are provided "AS IS" for educational and authorized testing purposes only. Unauthorized access to computer systems is illegal. Users are solely responsible for ensuring they have explicit permission before testing any systems.

**NO LIABILITY**: The repository owner assumes no responsibility for misuse, damages, or illegal activities conducted with these tools. Use at your own risk.

## Purpose

Personal collection of security tools for authorized penetration testing engagements and capture-the-flag competitions.

---

**By using these tools, you agree to use them lawfully and accept full responsibility for your actions.**
