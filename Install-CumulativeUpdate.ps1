# Prompt user to enter KB number
$KBNumber = Read-Host "Enter the KB number of the cumulative update"

# Stop Windows Update Services
Stop-Service -Name wuauserv, cryptSvc, bits, msiserver

# Rename SoftwareDistribution folder
Rename-Item -Path C:\Windows\SoftwareDistribution SoftwareDistribution.old

# Restart Windows Update Services
Start-Service -Name wuauserv, cryptSvc, bits, msiserver

# Check for pending updates
Get-WindowsUpdate -Install -AcceptAll -AutoReboot

# Install Cumulative Update
Install-Package -Name $KBNumber

# Restart the server
Restart-Computer
