$FileName = "d:\powershell.txt"

# Get content of the file
$FileContent = Get-Content $FileName

#Get the bytes of the file content with encode
$fileContentInBytes = [System.Text.Encoding]::Unicode.GetBytes($FileContent)

# Base64 Encode file 
$fileContentEncoded = [System.Convert]::ToBase64String($fileContentInBytes)

# Save Base64 Enconde file with extension .b64
$fileContentEncoded | Set-content ($fileName + ".b64")

Write-Host $FileName + ".b64" + "File Encoded Successfully!"
