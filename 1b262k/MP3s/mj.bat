del m.js 

echo var f = [];				>>m.js
echo f[0]	= "v0.0.9";			>>m.js

setlocal ENABLEDELAYEDEXPANSION
call set /a x = 0

for /F "delims=" %%a in ('dir /ad /b') do (
	call set /a x = !x! + 1
	echo f[!x!]	= "%%a";		>>m.js
)

for /F "delims=" %%a in ('dir  /b *mp3') do (
	call set /a x = !x! + 1
	echo f[!x!]	= "%%a";		>>m.js
)
for /F "delims=" %%a in ('dir  /b *mp4') do (
	call set /a x = !x! + 1
	echo f[!x!]	= "%%a";		>>m.js
)
for /F "delims=" %%a in ('dir  /b *jpg') do (
	call set /a x = !x! + 1
	echo f[!x!]	= "%%a";		>>m.js
)
