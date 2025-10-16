@echo off
setlocal enabledelayedexpansion

set count=1

for %%f in (*.png *.jpg *.jpeg *.gif *.bmp *.tiff *.webp) do (
    set "num=00!count!"
    set "num=!num:~-2!"
    ren "%%f" "pic!num!.png"
    set /a count+=1
)

echo Renomeado com sucesso!
pause
