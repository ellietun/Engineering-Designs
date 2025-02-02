echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="C:\PROGRA~1\ANSYSI~1\v241\fluent/ntbin/win64/winkill.exe"

start "tell.exe" /B "C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\tell.exe" LAB-GPV200-238 59844 CLEANUP_EXITING
timeout /t 1
"C:\PROGRA~1\ANSYSI~1\v241\fluent\ntbin\win64\kill.exe" tell.exe
if /i "%LOCALHOST%"=="LAB-GPV200-238" (%KILL_CMD% 5584) 
if /i "%LOCALHOST%"=="LAB-GPV200-238" (%KILL_CMD% 10980) 
if /i "%LOCALHOST%"=="LAB-GPV200-238" (%KILL_CMD% 1300)
del "D:\EGH423 CFD ASSIGNMENT\Part 2\EGH423_ASSIGNMENT_PART2\EGH423_ASSIGNMENT_PART2_2023\cleanup-fluent-LAB-GPV200-238-10980.bat"
