﻿$ErrorActionPreference = 'Stop';

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$filePath32 = "$toolsPath\gs10011w32.exe"
$filePath64 = "$toolsPath\gs10011w64.exe"

$filePath = if ((Get-OSArchitectureWidth 64) -and $env:chocolateyForceX86 -ne $true) {
  Write-Host "Installing 64 bit version" ; $filePath64
} else { Write-Host "Installing 32 bit version" ; $filePath32 }

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  fileType       = 'exe'
  file           = $filePath
  softwareName   = 'GPL Ghostscript'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item -Force -ea 0 "$toolsPath\*.$($packageArgs.fileType)*"
