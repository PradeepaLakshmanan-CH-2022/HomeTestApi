# Change directory to the API application path
Set-Location -Path "C:\WebApi"

# Start the API using the appropriate command
Start-Process -FilePath "dotnet" -ArgumentList "PipelineTesting.dll" -NoNewWindow -PassThru
