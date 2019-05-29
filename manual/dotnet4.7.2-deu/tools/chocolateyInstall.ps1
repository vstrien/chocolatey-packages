$ErrorActionPreference = 'Stop'

// For release numbers see https://docs.microsoft.com/en-us/dotnet/framework/migration-guide/how-to-determine-which-versions-are-installed#to-find-net-framework-versions-by-viewing-the-registry-net-framework-45-and-later

if ($null -eq $props -or $props.Release -lt 461808) {
    throw ".NET Framework 4.7.2 is not installed."
}

if ($props.Release -gt 461814) {
    throw "There's a newer version of .NET Framework than 4.7.2 installed."
}

$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft .NET Framework  (DEU)*'
    fileType      = 'exe'
    silentArgs    = "/q /norestart /log ""${Env:TEMP}\${packageName}.log"""
    validExitCodes = @(
        0, # success
        3010 # success, restart required
    )
    url           = "https://download.microsoft.com/download/b/9/5/b95136c0-58a0-48df-821a-d05319a86852/enu_NETFX/amd64_ndp472-kb4054530-x86-x64-allos-deu_exe/ndp472-kb4054530-x86-x64-allos-deu.exe"
    checksum      = '4A8EFFB5E202B937755F04A963F5B2EF9A53818DA84247250CA9F468FBD99244'
    checksumType  = 'sha256'
  }

Install-ChocolateyPackage @packageArgs
