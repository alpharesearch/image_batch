@echo off
for /f "tokens=*" %%a in (names.txt) do call :processline %%a

goto :eof

:processline
SET line=%*
echo %line%
convert -font Arial -background #00000080 -fill white -gravity center -size 4000x1000 caption:"%line%" bg.png +swap -gravity East -composite "%line%_out.jpg"

goto :eof

:eof
