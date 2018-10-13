import-module au

$releases = 'https://github.com/bower/bower/releases'

function global:au_SearchReplace {
    $version = [Version]$Latest.Version
    $packageVersion = [string]$version.Major + "." + $version.Minor + "." + $version.Build

    @{
        'tools\ChocolateyInstall.ps1' = @{
            "(^[$]version\s*=\s*)('.*')" = "`$1'$($packageVersion)'"
        }
     }
}

function global:au_GetLatest {
    $download_page = Invoke-WebRequest -Uri $releases -UseBasicParsing

    #v1.7.9.zip
    $re  = "(.*).zip"
    $url = $download_page.links | Where-Object href -match $re | Select-Object -First 1 -expand href
    $file = $url -split 'v' | Select-Object -last 1

    $version = [IO.Path]::GetFileNameWithoutExtension($file)

    $Latest = @{ Version = $version }
    return $Latest
}

update -ChecksumFor none
