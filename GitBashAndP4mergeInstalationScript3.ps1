New-Item c:\Downloads -type directory
Invoke-WebRequest -Uri "https://github.com/git-for-windows/git/releases/download/v2.15.0.windows.1/Git-2.15.0-64-bit.exe" -OutFile "C:\Downloads\Git-2.15.0-64-bit.exe"
Invoke-WebRequest -Uri "\\arke\NAV Team\INSTALL\P4Merge\p4vinst.exe" -OutFile "C:\Downloads\p4vinst.exe"
Start-Process -Wait -FilePath "C:\Downloads\Git-2.15.0-64-bit.exe" -ArgumentList '/SP- /VERYSILENT /SUPPRESSMSGBOXES /FORCECLOSEAPPLICATIONS '
Start-Process -Wait -FilePath "C:\Downloads\p4vinst.exe" -ArgumentList '/S /V"/qn ALLUSERS=1 REBOOT=ReallySuppress"' 