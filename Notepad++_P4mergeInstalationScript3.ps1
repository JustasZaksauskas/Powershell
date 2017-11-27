$dir = Test-Path C:\Downloads 
If (-not $dir){
    New-Item c:\Downloads -type directory
    }
$notepadDir = Test-Path C:\Downloads\npp.7.5.1.Installer.x64.exe
If(-not $notepadDir){
    Invoke-WebRequest -Uri "https://notepad-plus-plus.org/repository/7.x/7.5.1/npp.7.5.1.Installer.x64.exe" -OutFile "C:\Downloads\npp.7.5.1.Installer.x64.exe"
    }
$p4Dir = Test-Path C:\Downloads\p4vinst.exe
If(-not $p4Dir){
    Invoke-WebRequest -Uri "\\arke\NAV Team\INSTALL\P4Merge\p4vinst.exe" -OutFile "C:\Downloads\p4vinst.exe"
    }
Start-Process -Wait -FilePath "C:\Downloads\p4vinst.exe" -ArgumentList '/S /V"/qn ALLUSERS=1 REBOOT=ReallySuppress"' 
Start-Process -Wait -FilePath "C:\Downloads\npp.7.5.1.Installer.x64.exe" -ArgumentList '/S /V"/qn "' 