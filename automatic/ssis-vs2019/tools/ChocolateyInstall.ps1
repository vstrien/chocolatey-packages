$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.IntegrationServices*'
    fileType      = 'exe'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://ssis.gallerycdn.vsassets.io/extensions/ssis/sqlserverintegrationservicesprojects/3.0/1555036193942/Microsoft.DataTools.IntegrationServices.exe"
    checksum      = "f96d1152d442a9ffa46c02d71dbeaed4afc09a9a4b25564d4ab927fd1be1d38c"
    checksumType  = "sha256"
  }
  
Install-ChocolateyPackage @packageArgs
