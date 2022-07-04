# install Adobe Flash Player debug plugin for Firefox.
# $Url = "https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flashplayer_32_plugin_debug.exe"
$Url = "https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flashplayer_32_plugin_debug.exe"
$Path = $env:TEMP
$Installer = "flashplayer_32_plugin_debug.exe"
Invoke-WebRequest $Url -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -ArgumentList "/install" -Verb RunAs
Remove-Item $Path\$Installer

# install Adobe Flash Player debug plugin for Chrome.
# $Url = "https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flashplayer_32_ppapi_debug.exe"
$Url = "https://fpdownload.macromedia.com/pub/flashplayer/updaters/32/flashplayer_32_ppapi_debug.exe"
$Path = $env:TEMP
$Installer = "flashplayer_32_ppapi_debug.exe"
Invoke-WebRequest $Url -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -ArgumentList "/install" -Verb RunAs
Remove-Item $Path\$Installer



Write-Host "awscli installer Start."
# install the awscli

# $Url = "https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi"
$Url = "https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi"
$Path = $env:TEMP
$Installer = "AWSCLI64PY3.msi"
Invoke-WebRequest $Url -OutFile $Path\$Installer
Start-Process -FilePath $Path\$Installer -Args "/qn" -Verb RunAs -Wait


# https://docs.aws.amazon.com/cli/latest/userguide/awscli-install-windows.html
$dlurl = "https://s3.amazonaws.com/aws-cli/AWSCLI64PY3.msi"
$installerPath = Join-Path $env:TEMP (Split-Path $dlurl -Leaf)
Invoke-WebRequest $dlurl -OutFile $installerPath
Start-Process -FilePath msiexec -Args "/i $installerPath /passive" -Verb RunAs -Wait
Remove-Item $installerPath

$env:path += ';C:\Program Files\Amazon\AWSCLI\bin\'
Write-Host "awscli installer End."



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
