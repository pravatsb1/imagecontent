
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
