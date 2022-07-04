
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
