
Write-Host "firefox installer Start."
# install the latest firefox. We should use an explicit version.
# $Url = "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
$Url = "https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US"
$Path = $env:TEMP
$Installer = "Firefox Setup 82.0.exe"
Invoke-WebRequest $Url -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -Args "/silent /install" -Verb RunAs -Wait
Remove-Item $Path\$Installer
Write-Host "firefox installer End."
