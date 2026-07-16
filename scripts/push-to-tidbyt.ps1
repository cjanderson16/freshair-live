param(
    [string]$DeviceId,
    [string]$Latitude = "39.6133",
    [string]$Longitude = "-105.0166",
    [string]$Title = "Littleton AQI"
)

if (-not $DeviceId) {
    Write-Host "Available devices:"
    pixlet devices
    $DeviceId = Read-Host "Enter your Tidbyt Device ID"
}

$secureKey = Read-Host "Enter your OpenWeather API key" -AsSecureString
$keyPtr = [Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureKey)

try {
    $ApiKey = [Runtime.InteropServices.Marshal]::PtrToStringBSTR($keyPtr)

    pixlet render freshair_live.star `
        api_key="$ApiKey" `
        latitude="$Latitude" `
        longitude="$Longitude" `
        title="$Title"

    if ($LASTEXITCODE -ne 0) {
        throw "Pixlet render failed."
    }

    pixlet push "$DeviceId" freshair_live.webp

    if ($LASTEXITCODE -ne 0) {
        throw "Pixlet push failed."
    }

    Write-Host "FreshAir Live was pushed to your Tidbyt."
}
finally {
    [Runtime.InteropServices.Marshal]::ZeroFreeBSTR($keyPtr)
    Remove-Variable ApiKey -ErrorAction SilentlyContinue
}
