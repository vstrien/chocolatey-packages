Update-SessionEnvironment

$version = '2.2.0'

if (-Not (Get-Command "node" -errorAction SilentlyContinue)) {
    Write-Error "Command line interface for gulp requires Node.js to be installed. To install with Chocolatey, use either of the commands below:"
    Write-Error "  choco install nodejs"
    Write-Error "  choco install nodejs-lts"
    throw "Node.js not found"
} else {
    npm install -g gulp-cli@$version
}
