# Download and install .NET
Invoke-WebRequest -Uri "https://dotnet.microsoft.com/download/dotnet/thank-you/runtime-6.0.0-windows-x64-installer" -OutFile "$env:TEMP\dotnet-runtime.exe"
Start-Process -Wait -FilePath "$env:TEMP\dotnet-runtime.exe" -ArgumentList '/install', '/quiet'

# Install IIS
Add-WindowsFeature Web-Server, Web-Mgmt-Tools -IncludeManagementTools
Start-Service -Name W3SVC
