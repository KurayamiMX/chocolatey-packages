﻿$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName    = 'tixati.portable'
  url            = 'https://download2.tixati.com/download/tixati-3.18-1.portable.zip'
  checksum       = 'e584afbf1cdbf8ded55bf389f6b4bbf41a7d1112177b85ea79f8802254e7038d'
  checksumType   = 'sha256'
  unzipLocation  = $toolsPath
}
Install-ChocolateyZipPackage @packageArgs

$is32bit = (Get-OSArchitectureWidth 32) -or ($Env:chocolateyForceX86 -eq 'true')
$tixati_path = "$toolsPath\Tixati_portable"
Remove-Item $tixati_path\tixati_Linux*
if ($is32bit) {
    Remove-Item $tixati_path\tixati_Windows64bit.exe
    Move-Item $tixati_path\tixati_Windows32bit.exe $tixati_path\tixati.exe
} else {
    Remove-Item $tixati_path\tixati_Windows32bit.exe
    Move-Item $tixati_path\tixati_Windows64bit.exe $tixati_path\tixati.exe
}
