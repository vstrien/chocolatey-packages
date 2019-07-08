$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.1/1562574939108/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "412eb7ccf46bb6ee9528921efb829184ff3232bd5fc121544b20f50abdeeef0b"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
