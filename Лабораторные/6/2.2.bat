timeout /t 60
setlocal enabledelayedexpansion
for /r C:\cd %%a in (*) do	(set /a size=%%~Za
if !size! GTR 2097152 copy /Z %%a \\home-cde2b80195\temp )
PAUSE
