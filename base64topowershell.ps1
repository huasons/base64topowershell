$FileName = "d:\base.txt"

# Get content of the file
$FileContent = Get-Content $FileName

# Base64 Encode file 
$fileContentEncoded = [System.Convert]::FromBase64String($FileContent)

#Get the bytes of the file content with encode
$fileContentInBytes = [System.Text.Encoding]::Unicode.GetString($fileContentEncoded)

# Save Base64 Enconde file with extension .b64
$fileContentInBytes | Set-content ($fileName + ".ac")

Write-Host $FileName + ".ac" + "File Encoded Successfully!"
