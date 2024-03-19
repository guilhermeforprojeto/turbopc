@echo off
set "segundos=200"
set "cor=0"

echo.
echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo . 
echo ... Bom quase finalizado, obrigado por aguardar.
echo ... Agora recomendo que veja o video onde explico o que deve fazer agora, esta na descricao do programa
echo ... O Video  sera aberto em  15 segundos
echo ============================== 
timeout /t 15 
start "" https://www.youtube.com/watch?v=KuBvIgqG6hA


:loop
cls
echo.
echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo .
echo .
echo ==============================
echo ... Bom quase finalizado, obrigado por aguardar.
echo ... Agora recomendo que veja o video onde explico o que deve fazer agora
echo ==============================

if %cor% EQU 0 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 1 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 2 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 3 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 4 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 5 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 6 echo Reiniciando em %segundos% segundos  & goto :color
if %cor% EQU 7 echo Reiniciando em %segundos% segundos  & goto :color
:color
rem Altera a cor do texto
color %cor%
rem Incrementa o índice da cor
set /a "cor+=1"
rem Se o índice da cor atingiu o limite, reinicia
if %cor% GEQ 8 set "cor=0"
rem Decrementa o valor dos segundos
set /a "segundos-=1"
rem Pausa de 1 segundo
timeout /t 1 >nul
rem Verifica se a contagem regressiva chegou a zero
if %segundos% GTR 0 goto loop
echo.
echo Contagem regressiva finalizada!
color 7
timeout /t 5 >nul

pause
pause
pause