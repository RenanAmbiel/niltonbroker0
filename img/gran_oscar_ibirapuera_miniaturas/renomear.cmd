@echo off
setlocal enabledelayedexpansion

set count=2

for %%f in (*.webp) do (
    set "num=00!count!"
    set "num=!num:~-2!"
    ren "%%f" "pic!num!.webp"
    set /a count+=1
)

echo Renomeado com sucesso!
pause
