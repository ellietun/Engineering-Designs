echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v241\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\tell.exe" LAB-KGR500-050 56426 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 14400) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 4992) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 13480)
del "D:\EGH423 CFD ASSIGNMENT\Part 2\EGH423_ASSIGNMENT_PART2\EGH423_ASSIGNMENT_PART2_2023\cleanup-fluent-LAB-KGR500-050-4992.bat"
