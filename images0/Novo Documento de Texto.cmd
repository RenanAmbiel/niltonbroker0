@echo off
setlocal enabledelayedexpansion

set count=6

for %%f in (*.jpg) do (
    set "num=00!count!"
    set "num=!num:~-2!"
    ren "%%f" "pic!num!.jpg"
    set /a count+=1
)

echo Renomeado com sucesso!
pause
