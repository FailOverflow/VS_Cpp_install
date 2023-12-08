
copy "D:\VS_install.ps1" "C:\"

copy "D:\after_reboot.bat" "C:\"

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""C:\VS_install.ps1""' -Verb RunAs}"