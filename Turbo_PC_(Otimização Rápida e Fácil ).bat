@echo off
color a

@echo off
color b


@echo off
echo Desativando sombreamento das janelas no Windows 10...

rem Caminho no registro que armazena a configuração visual das janelas
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 3 /f

rem Atualizando as configurações de desempenho no painel de controle
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\DWM" /v EnableAeroPeek /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012038010000000 /f

rem Reiniciando o processo explorer para aplicar as mudanças
taskkill /f /im explorer.exe
start explorer.exe

echo Sombreamento desativado com sucesso!
pause


echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo  ............................ 
echo  ............................ 
echo  Digite "S" para continuar... 
echo  ............................ 
echo  ............................ 
echo ==============================


chkdsk /r /b C: 
cls

echo "===== PASSO 1 de 10 - tempo estimado 1 hora. Iniciado as: " & time /t 
chkdsk /r /b D: 
cls

color a 
echo "===== PASSO 2  de 10 - tempo estimado 1 hora. Iniciado as: " & time /t

del /S /Q C:\Windows\Temp\*  &
rmdir /S /Q C:\Windows\Temp\  &
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarAnimations" /t REG_DWORD /d 0 /f  
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "UseOLEDTaskbarTransparency" /t REG_DWORD /d 0 /f 
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableAeroGlass" /t REG_DWORD /d 0 /f  
cls 
cls

echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo mrt.exe /F:Y /Q  &
echo "===== PASSO 2 de 10 - tempo estimado 2 horas. Iniciado as: " & time /t
color b
mrt.exe /F:Y /Q  &
cls


echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo "===== PASSO 3 de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
color b


echo ==============================
echo  ............................ 
echo  ... System Bee Solutions ... 
echo  ............................ 
echo ==============================
echo "===== PASSO 4 [OTIMIZANDO SEU ARMAZENAMENTO....PODE DEMORAR] de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
color b
defrag C: /U /V &
cls
echo "===== PASSO 5 [OTIMIZANDO SEU ARMAZENAMENTO....PODE DEMORAR] de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
defrag D: /U /V &
cls
echo "===== PASSO 6 [OTIMIZANDO SEU ARMAZENAMENTO....PODE DEMORAR] de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
defrag E: /U /V &
cls
echo "===== PASSO 8 de 10 - tempo estimado 1 hora. Iniciado as: " & time /t

echo ==============================
echo  ... System Bee Solutions ... 
echo ==============================
echo ##############################
echo  ....
echo  .... Agora estavar reparando a integridade do seu sistema operacional (do Windows)
echo  .... Essa etapa precisa de conexão com internet para funcionar, pois sera validado online no servidor oficial da Microsoft
echo  ....
echo ##############################
echo "===== PASSO 8 Começando........" &   date /t & time /t 
color a
dism /online /cleanup-image /restorehealth &
echo "===== PASSO 9 de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
dism /online /cleanup-image /startcomponentcleanup &
echo "===== PASSO 10 de 10 - tempo estimado 1 hora. Iniciado as: " & time /t
SFC /SCANNOW 
cls
taskkill /f /t /im OfficeClickToRun.exe 
taskkill /f /t /im RemoteMouse.exe
taskkill /f /t /im msedge.exe
taskkill /f /t /im TranslucentTB.exe
taskkill /f /t /im vgtray.exe
taskkill /f /t /im mstsc.exe
taskkill /f /t /im msteamsupdate.exe
taskkill /f /t /im Lively.exe
taskkill /f /t /im onedrive.exe
taskkill /f /t /im teamviewer.exe
taskkill /f /t /im GoogleDriveFS.exe
taskkill /f /t /im discord.exe
taskkill /f /t /im ccxpprocess.exe
taskkill /f /t /im steam.exe
taskkill /f /t /im epic.exe
taskkill /f /t /im utweb.exe
taskkill /f /t /im Battle.net.exe
taskkill /f /t /im EpicGamesLauncher.exe
taskkill /f /t /im OpenVPNConnect.exe
taskkill /f /t /im translucenttb.exe
taskkill /f /t /im btweb.exe
taskkill /f /t /im ArmouryCrate.Service
taskkill /f /t /im AcPowerNotifiCAtion.exe
taskkill /f /t /im ArmouryCrate.UserSessionHelper.exe
taskkill /f /t /im ArmourySocketServer.exe
taskkill /f /t /im ROGLiveService.exe
taskkill /f /t /im Spotify.exe
taskkill /f /t /im steamwebhelper.exe
taskkill /f /t /im EABackgroundService
taskkill /f /t /im GoogleCrashHandler64.exe
taskkill /f /t /im EADesktop.exe
taskkill /f /t /im browser_assistant.exe
taskkill /f /t /im PhoneExperienceHost.exe
taskkill /f /t /im XboxPCApp.exe
taskkill /f /t /im chrome.exe
taskkill /f /t /im WinStore.App.exe

echo Bom quase finalizado, obrigado por aguardar.
echo Agora recomendo que veja o video onde explico o que vai acontcer agora.
start "" https://www.youtube.com/watch?v=KuBvIgqG6hA
echo Atenção pois ao reiniciar a maquina ira iniciar o processo mais importante dessa manutenção. Não desligue


echo essa maquina vai ser reiniciar em 1 minutos 
timeout /t 60 >nul
shutdown /r /f /t 0


echo MENSAGEM_2
timeout /t 5 >nul



cls
cls

shutdown /r /f /t 0


