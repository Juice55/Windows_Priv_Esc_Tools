#!/bin/bash

# Prompt for username
read -p "Enter your username (default: kali): " USERNAME
USERNAME=${USERNAME:-kali}

# Create the Dirs for location of tools and CD
# Set base directory
TOOLS_DIR="/home/$USERNAME/tools"
WINDOWS_DIR="$TOOLS_DIR/windows"
# Create the Dirs for location of tools and CD
mkdir -p "$TOOLS_DIR"
mkdir -p "$WINDOWS_DIR"
cd "$WINDOWS_DIR"

#Installing packages that are helpful
sudo apt install -y eyewitness

#Grabing all tools, adding url sometimes in case its needed too for each one

# https://github.com/SpecterOps/BloodHound-Legacy/releases
# Bloodhound
wget https://github.com/SpecterOps/BloodHound-Legacy/releases/download/v4.3.1/BloodHound-win32-x64.zip
unzip BloodHound-win32-x64.zip

# https://github.com/ropnop/kerbrute/releases
# Kerbrute x64 version 
# Note: Adding linux too since it might be used to enum windows
wget https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_windows_amd64.exe
wget https://github.com/ropnop/kerbrute/releases/download/v1.0.3/kerbrute_linux_amd64

# Invoke-MS16-032 Privilege Escalation
wget https://raw.githubusercontent.com/egre55/windows-kernel-exploits/refs/heads/master/MS16-032%3A%20Secondary%20Logon%20Handle/Invoke-MS16-032-Remote-Shell.ps1

# BypassUAC.ps1 used to bypass UAC for Priv Esc
wget https://raw.githubusercontent.com/FuzzySecurity/PowerShell-Suite/refs/heads/master/Bypass-UAC/Bypass-UAC.ps1

#PowerUp.ps1 used to enumerate and abuse services, etc for priv esc
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/PowerUp.ps1

# Sharp hound
# Used to get bloodhound data for AD Enumeration
# If the URL below donest work, check and use the latest version
wget https://github.com/SpecterOps/SharpHound/releases/download/v2.5.13/SharpHound-v2.5.13.zip
mkdir SharpHound-v2.5.13
unzip SharpHound-v2.5.13.zip -d ./SharpHound-v2.5.13/

#Sysinteral Suite
# Useful for Priv esc in some windows scenarios
wget https://download.sysinternals.com/files/SysinternalsSuite.zip
mkdir SysinternalsSuite
unzip SysinternalsSuite.zip -d ./SysinternalsSuite/

#Chisel
# This is used for pivoting, you could just use Ligolo, plus this version below should work, maybe need a dif version IDK
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_linux_amd64.gz
wget https://github.com/jpillora/chisel/releases/download/v1.10.1/chisel_1.10.1_windows_amd64.gz
gunzip chisel_1.10.1_linux_amd64.gz
gunzip chisel_1.10.1_windows_amd64.gz

# DomainPasswordSpray.ps1
# Prefroms password spraying in an AD env
wget https://raw.githubusercontent.com/dafthack/DomainPasswordSpray/refs/heads/master/DomainPasswordSpray.ps1

# EnableAllTokenPrivs.ps1
# Does what it says i guess, enable all token privs if your perms are correct
wget https://raw.githubusercontent.com/fashionproof/EnableAllTokenPrivs/master/EnableAllTokenPrivs.ps1

# Inveigh.ps1 
# Grabs passwords in domain
wget https://raw.githubusercontent.com/Kevin-Robertson/Inveigh/refs/heads/master/Inveigh.ps1

# JuicyPotato.exe
# Used for Priv esc, uses SEImpersinate token to launch system shell
wget https://github.com/ohpe/juicy-potato/releases/download/v0.1/JuicyPotato.exe

# Lazagne.exe
# Grabs passwords from web browser, you may need to update link below for latest version. Current Version as of now is V2.4.7
wget https://github.com/AlessandroZ/LaZagne/releases/download/v2.4.7/LaZagne.exe

# Mimikatz.exe, Mimikatz_64.exe and nc64.exe
# Mimikatz in 32 bit and 64 bit for priv escaltion, and netcat x64 for use in other things
# This pulls from my repo since I cant find it easily online
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/mimikatz.exe
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/mimikatz_64.exe
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/nc64.exe

# Plink.exe
# Used for remote SSH tunneling
wget https://the.earth.li/~sgtatham/putty/latest/w64/plink.exe

#PowerView.ps1
# Used for Network and User enumeration in AD
wget https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/refs/heads/master/Recon/PowerView.ps1

# PrintSpoofer.exe x64
# Used to excalate privleges, Impersionates system to run command. useful for system shell
wget https://github.com/itm4n/PrintSpoofer/releases/download/v1.0/PrintSpoofer64.exe

# Rubeus.exe
# Used to get TGT and forging tickets for priv esc.
# Adding https://github.com/GhostPack/Rubeus useful readme, but pulling from my Repo, You need to compile theirs :(
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/Rubeus.exe

# SeBackupPrivilegeCmdLets.dll & SEBackupPrivilegeUtils.dll
# Used to get backup privs, You may need to compile from original repo for the .NET you have. Pulling from my repo
# https://github.com/giuliano108/SeBackupPrivilege
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/SeBackupPrivilegeCmdLets.dll
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/SeBackupPrivilegeUtils.dll

# SessionGopher.ps1
# Finds saved session info and decripts it, FTP, SSH, ETC.
wget https://raw.githubusercontent.com/Arvanaghi/SessionGopher/refs/heads/master/SessionGopher.ps1

# Sharpup.exe
# Checks for Priv escalation options, Using Original Repo requires compile, pulling from my repo
wget https://github.com/Juice55/Windows_Priv_Esc_Tools/raw/refs/heads/main/SharpUp.exe

# Snaffler.exe
# Used to find creds on windows machines, likely in AD env
wget https://github.com/SnaffCon/Snaffler/releases/download/1.0.212/Snaffler.exe
######-----------------------------------------------------------------------------#######
cd /home/kali/tools/
git clone --depth 1 https://github.com/Ridter/noPac.git
# Install Ligolo, useful for pivoting
mkdir "$TOOLS_DIR/ligolo"
cd "$TOOLS_DIR/ligolo"
# Linux x64 pivot
wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.2/ligolo-ng_agent_0.8.2_linux_amd64.tar.gz
# Linux x64 host
wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.2/ligolo-ng_proxy_0.8.2_linux_amd64.tar.gz
# Windows x64 pivot
wget https://github.com/nicocha30/ligolo-ng/releases/download/v0.8.2/ligolo-ng_agent_0.8.2_windows_amd64.zip
tar -xzf ligolo-ng_proxy_0.8.2_linux_amd64.tar.gz
tar -xzf ligolo-ng_agent_0.8.2_linux_amd64.tar.gz
unzip ligolo-ng_agent_0.8.2_windows_amd64.zip

echo "  "
echo "  "
echo "##################################################"
echo "Tools now installed. You can file the tools in the following directories"
echo "1. $TOOLS_DIR/windows - For windows Tools"
echo "1. $TOOLS_DIR/noPac - For noPac Tools"
echo "##################################################"
