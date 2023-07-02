# Change directory to the API application path
Set-Location -Path "C:\HomeApplication"

# Start the API using the appropriate command
Start-Process -FilePath "dotnet" -ArgumentList "HomeApi.dll" -NoNewWindow -PassThru
