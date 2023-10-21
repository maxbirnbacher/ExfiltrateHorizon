function Upload-File {
    param (
        [Parameter(Mandatory = $true)]
        [string]$FilePath,
        [Parameter(Mandatory = $true)]
        [string]$ApiEndpoint
    )

    # Check if the file exists
    if (-not (Test-Path $FilePath -PathType Leaf)) {
        Write-Host "File does not exist"
        return
    }

    $fileBytes = [System.IO.File]::ReadAllBytes($FilePath);
    $boundary = [System.Guid]::NewGuid().ToString(); 
    $LF = "`r`n";

    # Convert file bytes to a Base64 string
    $fileEnc = [System.Convert]::ToBase64String($fileBytes)

    $bodyLines = ( 
        "--$boundary",
        "Content-Disposition: form-data; name=`"file`"; filename=`"$([System.IO.Path]::GetFileName($FilePath))`"",
        "Content-Type: application/octet-stream$LF",
        $fileEnc,
        "--$boundary--$LF" 
    ) -join $LF

    Invoke-RestMethod -Uri $ApiEndpoint -Method Post -ContentType "multipart/form-data; boundary=`"$boundary`"" -Body $bodyLines
}

function Upload-Directory {
    param (
        [Parameter(Mandatory = $true)]
        [string]$DirectoryPath,
        [Parameter(Mandatory = $true)]
        [string]$ApiEndpoint
    )

    # Check if the directory exists
    if (-not (Test-Path $DirectoryPath -PathType Container)) {
        Write-Host "Directory does not exist"
        return
    }

    # Get all files in the directory and its subdirectories
    $files = Get-ChildItem $DirectoryPath -File -Recurse

    # Upload each file
    foreach ($file in $files) {
        Upload-File -FilePath $file.FullName -ApiEndpoint $ApiEndpoint
    }
}

# Usage:
# Upload-File -FilePath "C:\path\to\file.txt" -ApiEndpoint "http://example.com/api/upload"
# Upload-Directory -DirectoryPath "C:\path\to\directory" -ApiEndpoint "http://example.com/api/upload"