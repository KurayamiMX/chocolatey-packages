﻿$installData32 = @{
  Url = 'https://download.visualstudio.microsoft.com/download/pr/c8edbb87-c7ec-4500-a461-71e8912d25e9/99ba493d660597490cbb8b3211d2cae4/vc_redist.x86.exe'
  Checksum = '3a43e8a55a3f3e4b73d01872c16d47a19dd825756784f4580187309e7d1fcb74'
  ChecksumType = 'sha256'
}

$installData64 = @{
  Url64 = 'https://download.visualstudio.microsoft.com/download/pr/9e04d214-5a9d-4515-9960-3d71398d98c3/1e1e62ab57bbb4bf5199e8ce88f040be/vc_redist.x64.exe'
  Checksum64 = 'd6cd2445f68815fe02489fafe0127819e44851e26dfbe702612bc0d223cbbc2b'
  ChecksumType64 = 'sha256'
}

$uninstallData = @{
  SoftwareName = 'Microsoft Visual C++ 2015-2019 Redistributable*'
}

$otherData = @{
  ThreePartVersion = [version]'14.21.27702'
  FamilyRegistryKey = '14.0'
  PackageName = 'vcredist140'
}
