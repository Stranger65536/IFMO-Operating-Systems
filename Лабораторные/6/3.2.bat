net stop "DNS Client"
timeout 2
net start > services.new.txt
call 3.3.3.bat
net start "DNS Client"