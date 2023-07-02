# Install .NET 6 Runtime
$dotnetUrl = "https://dot.net/v1/dotnet-install.ps1"
$dotnetInstaller = "$env:TEMP\dotnet-install.ps1"

Invoke-WebRequest -Uri $dotnetUrl -OutFile $dotnetInstaller
& $dotnetInstaller -Channel LTS -Runtime dotnet -InstallDir "$env:ProgramFiles\dotnet" -NoPath

# Optional: Install IIS Server (if not already installed)
$features = Get-WindowsFeature | Where-Object {$_.Name -eq "Web-Server" -and $_.Installed -eq $false}
if ($features.Count -gt 0) {
    Write-Host "Installing IIS Server..."
    Install-WindowsFeature -Name "Web-Server" -IncludeManagementTools
    Write-Host "IIS Server installed successfully."
}
