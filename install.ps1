Import-Module -Name ServerManager
Install-WindowsFeature Web-Server

$basePath = Split-Path -parent $PSCommandPath


Remove-Item c:\inetpub\wwwroot\* -recurse -verbose
Copy-Item "$basePath\webapidemo\*" C:\inetpub\wwwroot -recurse
