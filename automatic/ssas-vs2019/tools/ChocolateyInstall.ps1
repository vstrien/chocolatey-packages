$ErrorActionPreference = 'Stop';

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft.DataTools.AnalysisServices*'
    fileType      = 'vsix'
    silentArgs    = "/quiet /log `"$env:TEMP\$env:ChocolateyPackageName.$env:ChocolateyPackageVersion.log`""
    validExitCodes= @(0)
    url           = "https://probitools.gallerycdn.vsassets.io/extensions/probitools/MicrosoftAnalysisServicesModelingProjects/2.8.17/1562574939108/Microsoft.DataTools.AnalysisServices.vsix"
    checksum      = "412eb7ccf46bb6ee9528921efb829184ff3232bd5fc121544b20f50abdeeef0b"
    checksumType  = "sha256"
  }
  ProBITools/vsextensions/MicrosoftAnalysisServicesModelingProjects/2.8.17/vspackage
Install-ChocolateyPackage @packageArgs
