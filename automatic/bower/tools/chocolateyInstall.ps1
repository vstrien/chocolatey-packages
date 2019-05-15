Update-SessionEnvironment

$version = '1.8.8'

if (-Not (Get-Command "node" -errorAction SilentlyContinue)) {
    Write-Error "Bower requires Node.js to be installed. To install with Chocolatey, use either of the commands below:"
    Write-Error "  choco install nodejs"
    Write-Error "  choco install nodejs-lts"
    throw "Node.js not found"
} else {
    npm install -g bower@$version
}
