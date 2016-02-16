Import-Module -Name ServerManager
Install-WindowsFeature Web-Server
Install-WindowsFeature AS-Net-Framework
Install-WindowsFeature Web-Asp-Net45
Install-WindowsFeature Web-Mgmt-Console 

$basePath = Split-Path -parent $PSCommandPath


Remove-Item c:\inetpub\wwwroot\* -recurse -verbose
Copy-Item "$basePath\webapidemo\*" C:\inetpub\wwwroot -recurse
