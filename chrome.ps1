
Write-Host "Google Chrome installer Start."
# install the latest Google Chrome. We should use an explicit version.
# $Url = "http://dl.google.com/chrome/install/375.126/chrome_installer.exe"
$Url = "http://dl.google.com/chrome/install/latest/chrome_installer.exe"
$Path = $env:TEMP
$Installer = "chrome_installer.exe"
Invoke-WebRequest $Url -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait
Remove-Item $Path\$Installer
Write-Host "Google Chrome installer End."
