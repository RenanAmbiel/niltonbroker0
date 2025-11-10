@echo off
setlocal enabledelayedexpansion

set count=1

for %%f in (*.jpg) do (
    rem gera o número com dois dígitos
    set "num=00!count!"
    set "num=!num:~-2!"
    
    rem processa a imagem reduzindo pela metade e convertendo para WebP
    ffmpeg -i "%%f" -vf "scale=399:300" "pic!num!.webp"
    
    set /a count+=1
)

echo Processamento concluído!
pause
