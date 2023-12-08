Write-Output "> tworzę temp_folder na pliki instalacyjne"
New-Item -ItemType Directory -Path "C:\temp__VS"
Write-Output "> Pobieram pakiety instalacyjne" 
Invoke-WebRequest -URI "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64" -OutFile "C:\temp__VS\VS.exe"
Write-Output "> Pobieram pakiety instalacyjne cz.2" 
Invoke-WebRequest -URI "https://github.com/msys2/msys2-installer/releases/download/2023-10-26/msys2-x86_64-20231026.exe" -OutFile "C:\temp__VS\Cp_sea.exe"
Write-Output "> Instaluje kompilator MinGW" 
Start-Process -Wait -FilePath "C:\temp__VS\Cp_sea.exe" -ArgumentList '--confirm-command --accept-messages --root C:/msys64' -PassThru
Write-Output "> Instaluje VS Code" 
Start-Process -Wait -FilePath "C:\temp__VS\VS.exe" -ArgumentList '/s' -PassThru 
Write-Output "> Sprzątam pliki śmieci" 
Remove-Item –path "C:\temp__VS" 

