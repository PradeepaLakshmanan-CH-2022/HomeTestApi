# Change to the application directory
Set-Location -Path "C:\HomeApplication"

# Stop IIS website
Stop-WebSite -Name "Default Web Site"

# Configure IIS bindings
$webApiSiteName = "MyWebApi"
$webApiPhysicalPath = "C:\HomeApplication"

# Create a new IIS website for the Web API
New-WebSite -Name $webApiSiteName -PhysicalPath $webApiPhysicalPath -Port 80 -HostHeader "mywebapi.com"

# Start the Web API website
Start-WebSite -Name $webApiSiteName
