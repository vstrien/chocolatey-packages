import-module au

$releases = 'https://marketplace.visualstudio.com/items?itemName=SSIS.SqlServerIntegrationServicesProjects'

function global:au_SearchReplace {
  @{
    'tools\ChocolateyInstall.ps1' = @{
        "(\s*url\s*=\s*)`"([^*]+)`""          = "`$1`"$($Latest.URL32)`""
        "(\s*checksum\s*=\s*)`"([^*]+)`""     = "`$1`"$($Latest.Checksum)`""
        "(\s*checksumType\s*=\s*)`"([^*]+)`"" = "`$1`"$($Latest.ChecksumType)`""
      }
  }
}

function global:au_GetLatest {
  $download_page = Invoke-WebRequest -Uri $releases

  $json = $download_page.AllElements | ? class -eq 'vss-extension' | Select-Object -expand innerHtml | ConvertFrom-Json | Select-Object -expand versions
  $url = $json.files | ? source -match "\.exe$" | Select-Object -expand source -first 1

  $filename = [IO.Path]::GetFilename($url)

  $version = $json.version | Select-Object -first 1
  $checksum = Get-RemoteChecksum $url

  @{
    Version     = $version
    URL32       = $url
    Filename32  = $filename
    Checksum    = $checksum
    ChecksumType = "sha256"
  }
}

update -ChecksumFor none