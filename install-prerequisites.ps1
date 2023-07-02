# Install IIS
Write-Host "Installing IIS..."
Install-WindowsFeature -Name Web-Server, Web-Asp-Net45 -IncludeManagementTools

# Download .NET 6 installer
$dotnetInstallerPath = "$env:TEMP\dotnet-installer.exe"
$dotnetInstallerUrl = "https://dot.net/v1/dotnet-install.ps1"
Invoke-WebRequest -Uri $dotnetInstallerUrl -OutFile $dotnetInstallerPath

# Install .NET 6 runtime
Write-Host "Installing .NET 6..."
Start-Process -Wait -FilePath "powershell.exe" -ArgumentList "-ExecutionPolicy Bypass -File `"$dotnetInstallerPath`" -Channel LTS -InstallDir `"$env:ProgramFiles\dotnet`""

# Add .NET 6 to the PATH environment variable
$dotnetPath = Join-Path $env:ProgramFiles "dotnet"
[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";$dotnetPath", "Machine")
