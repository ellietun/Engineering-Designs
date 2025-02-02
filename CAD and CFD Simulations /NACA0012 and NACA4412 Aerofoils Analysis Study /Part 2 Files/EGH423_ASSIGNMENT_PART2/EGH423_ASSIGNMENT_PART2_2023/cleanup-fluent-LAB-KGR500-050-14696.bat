echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v241\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\tell.exe" LAB-KGR500-050 53862 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 9452) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 14696) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 8480)
del "D:\EGH423 CFD ASSIGNMENT\Part 2\EGH423_ASSIGNMENT_PART2\EGH423_ASSIGNMENT_PART2_2023\cleanup-fluent-LAB-KGR500-050-14696.bat"
