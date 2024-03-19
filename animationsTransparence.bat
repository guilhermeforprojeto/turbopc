@echo off

rem Desativa animações da barra de tarefas e menus
rem (Opcional)
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " taskbarAnimations" /t REG_DWORD /d 0 /f

rem Desativa animações de abertura e fechamento de janelas
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " Animations" /t REG_DWORD /d 0 /f

rem Desativa animações de menus e dicas de ferramentas
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " MenuShowDelay" /t REG_DWORD /d 0 /f

rem Desativa animações de rolagem de lista
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " ListBoxSmoothScrolling" /t REG_DWORD /d 0 /f

rem Desativa animações de arrastar e soltar
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " DragAnimations" /t REG_DWORD /d 0 /f

rem Desativa a sombra do mouse
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v " MouseShadow" /t REG_DWORD /d 0 /f

rem Reinicia o Explorer para aplicar as alterações
taskkill /f /im explorer.exe
start explorer.exe

@echo on
echo transparencia e animação desativadas