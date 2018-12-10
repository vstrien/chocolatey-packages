$packageArgs = @{
    packageName   = $env:ChocolateyPackageName
    softwareName  = 'Microsoft .NET Framework (DEU)*'
    fileType      = 'exe'
    silentArgs    = "/q /norestart /log ""${Env:TEMP}\${packageName}.log"""
    validExitCodes = @(
        0, # success
        3010 # success, restart required
    )
    url           = "https://download.microsoft.com/download/C/3/D/C3DCF34C-6239-4301-9251-AA6BC675F7A7/NDP462-KB3151800-x86-x64-AllOS-DEU.exe"
    checksum      = '027A4A169DF195AF7F1386BD786BAAC64A2CF3CAA32F515656F41E7D6C00BEFF'
    checksumType  = 'sha256'
    url64bit      = ""
    checksum64    = ''
    checksumType64= 'sha256'
  }

Install-ChocolateyPackage @packageArgs
