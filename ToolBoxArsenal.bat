mvcls
echo off
TITLE "Strike Back - Team Rouge(Red)"
:MENU
ECHO *** Warning: Created By Team Rouge(Red) ***
ECHO ...............................................
ECHO PRESS 1, 2 OR 3 to select your task, or 4 to EXIT.
ECHO ...............................................
ECHO 1 - Open Recon
ECHO 2 - Open WIFI Password Grabber 
ECHO 3 - Open TBD
ECHO 4 - EXIT
ECHO
SET /P M=Type 1, 2, 3, or 4 then press ENTER:
IF %M%==1 GOTO RECON
IF %M%==2 GOTO WPG
IF %M%==3 GOTO TBD
IF %M%==4 GOTO EOF
:RECON
echo *** Computer Infomation  *** > cpuinfo-%ComputerName%.txt
systeminfo >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Running Task on %ComputerName%  *** >> cpuinfo-%ComputerName%.txt
tasklist >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo ***IP Configure of %ComputerName% *** >> cpuinfo-%ComputerName%.txt
ipconfig >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** ARP Table *** >> cpuinfo-%ComputerName%.txt
arp -a >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Route Table *** >> cpuinfo-%ComputerName%.txt
route print >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Wifi Netowks *** >> cpuinfo-%ComputerName%.txt
netsh wlan show profile >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Firewall Status of %ComputerName% *** >> cpuinfo-%ComputerName%.txt
netsh advfirewall show allprofiles state >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** NetStat - Open Ports *** >> cpuinfo-%ComputerName%.txt 
netstat -aon >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Goups Polices *** >> cpuinfo-%ComputerName%.txt
GPRESULT /V >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Local Goups *** >> cpuinfo-%ComputerName%.txt
net localgroup >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Administrators *** >> cpuinfo-%ComputerName%.txt
net localgroup Administrators >> cpuinfo-%ComputerName%.txt
echo . >> cpuinfo-%ComputerName%.txt
echo *** Hyper-V Administrators *** >> cpuinfo-%ComputerName%.txt
net localgroup "Hyper-V Administrators"
echo . >> cpuinfo-%ComputerName%.txt
echo *** Device Owners *** >> cpuinfo-%ComputerName%.txt
net localgroup "Device Owners"
echo . >> cpuinfo-%ComputerName%.txt
echo *** Power Users *** >> cpuinfo-%ComputerName%.txt
net localgroup "Power Users"
echo . >> cpuinfo-%ComputerName%.txt
echo *** Remote Desktop Users *** >> cpuinfo-%ComputerName%.txt
net localgroup "Remote Desktop Users"
echo . >> cpuinfo-%ComputerName%.txt
echo *** System Managed Accounts Group *** >> cpuinfo-%ComputerName%.txt
net localgroup "System Managed Accounts Group"
echo . >> cpuinfo-%ComputerName%.txt
echo *** Users *** >> cpuinfo-%ComputerName%.txt
net localgroup "Users"
echo . >> cpuinfo-%ComputerName%.txt
echo *** Register Keys *** >> cpuinfo-%ComputerName%.txt
Reg Query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" >> cpuinfo-%ComputerName%.txt


GOTO MENU
:WPG
cls
echo WiFi Password Grabber 
echo Type The Wifi Network name below to grab the password.
echo **** Wifi Networks ***
netsh wlan show profile
SET /P N=Type the WIFI Name then press ENTER:
netsh wlan show profile name=%n% key=clear
echo *** FYI - Key Content is the Password. ***
Pause
GOTO MENU
 