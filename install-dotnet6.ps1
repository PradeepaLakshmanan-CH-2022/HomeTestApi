# Download .NET 6 SDK
Invoke-WebRequest -Uri "https://dotnet.microsoft.com/download/dotnet/6.0/runtime?initial-os=windows" -OutFile "$env:TEMP\dotnet-sdk.exe"

# Install .NET 6 SDK
Start-Process -Wait -FilePath "$env:TEMP\dotnet-sdk.exe" -ArgumentList '/install', '/quiet'
