Import-Module -Name ServerManager
Install-WindowsFeature Web-Server

$basePath = Split-Path -parent $PSCommandPath

Copy "$basePath" C:\inetpub\wwwroot -recurse
