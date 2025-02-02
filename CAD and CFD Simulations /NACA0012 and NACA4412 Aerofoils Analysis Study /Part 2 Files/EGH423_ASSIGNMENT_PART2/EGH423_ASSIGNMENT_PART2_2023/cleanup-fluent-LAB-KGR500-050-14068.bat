echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v241\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\tell.exe" LAB-KGR500-050 53912 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 15080) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 14068) 
if /i "%LOCALHOST%"=="LAB-KGR500-050" (%KILL_CMD% 9000)
del "D:\EGH423 CFD ASSIGNMENT\Part 2\EGH423_ASSIGNMENT_PART2\EGH423_ASSIGNMENT_PART2_2023\cleanup-fluent-LAB-KGR500-050-14068.bat"
