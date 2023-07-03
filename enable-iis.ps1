# Install IIS
Add-WindowsFeature Web-Server, Web-Mgmt-Tools -IncludeManagementTools

# Start IIS service
Start-Service -Name W3SVC
