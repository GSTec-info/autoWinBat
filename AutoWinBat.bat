@echo off
:: -------------------------------------------- ::
:: -- AutoWinBat
:: -------------------------------------------- ::
:: ************************************
:: ** Created by Generson Avelino    **
:: ************************************
:: -------------------------------------------- ::

:MENU_ALL
cls
title AutoWinBat -- ** Created by Generson Avelino **
color 17
echo.
echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
echo.
echo   =========================================================================
echo   ==                            AutoWinBat                               ==
echo   =========================================================================
echo   ==                                                                     ==
echo   ==  (1) - C¢pia com 'Robocopy'                                         ==
echo   ==  (2) - Alterar impressora padrÆo -- Usando python                   ==
echo   ==  (3) - Abrir fila de impressÆo de impressora                        ==
echo   ==  (4) - Habilitar wallpaper customizado na tela de login do windows  ==
echo   ==  (5) - Instalar gpedit no Windows 10 home                           ==
echo   ==  (6) - Corrigir miniaturas de ¡cones                                ==
echo   ==  (7) - Gerenciamento de compartilhamentos de rede                   ==
echo   ==  (8) - Matar processo                                               ==
echo   ==  (9) - Mudar IP                                                     ==
echo   ==  (0) - ***** Sair *****                                             ==
echo   ==                                                                     ==
echo   =========================================================================
set /P opMenuAll="------ "

if %opMenuAll%==1 ( goto COPIA_ROBOCOPY )
if %opMenuAll%==2 ( goto CHANGE_PRINTER_DEFAULT )
if %opMenuAll%==3 ( goto OPEN_QUEUE_PRINTER )
if %opMenuAll%==4 ( goto CHANGE_WALLPAPER_LOGIN_SCREEN )
if %opMenuAll%==5 ( goto INSTALL_GPEDIT_WIN10HOME )
if %opMenuAll%==6 ( goto RESET_ICONS )
if %opMenuAll%==7 ( goto MANAGER_SHARE_NETWORK )
if %opMenuAll%==8 ( goto KILL_PROCESS )
if %opMenuAll%==9 ( goto CHANGE_IP )
if %opMenuAll%==0 ( goto :eof ) else ( goto :eof )



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (1) - Cópia com 'Robocopy'
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:COPIA_ROBOCOPY
cls
title Scrit para c¢pia de arquivos usando 'Robocopy' -- Created by Generson Avelino

echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
echo.
echo   ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo   ²²                                                                                                ²²
echo   ²²           ------------  Scrit para c¢pia de arquivos usando 'Robocopy'  ------------           ²²
echo   ²²                                                                                                ²²
echo   ²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²²
echo.
echo         Caminhos de origem sugeridos para Backup:
echo           - %userprofile%                            (Pasta do usu rio)
echo           - %userprofile%\AppData\Local\Google\      (Pasta do Google Chrome)
echo.                        
echo   °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
echo   °°    Pastas e arquivos sugeridos para ignorar durante a copia da pasta do usu rio:               °°
echo   °°      - AppData                                                                                 °°
echo   °°      - Cookies                                                                                 °°
echo   °°                                                                                                °°
echo   °°    ***Obs: - Recomenda-se colocar aspas duplas entre o caminho de origem e de destino          °°
echo   °°            - Digite "/XD" antes do nome para pastas e "/XF" antes do nome para arquivos        °°
echo   °°                                                                                                °°
echo   °°              Exemplo: /XD AppData /XD Cookies                                                  °°
echo   °°                       /XF "Nome do arquivo"                                                    °°
echo   °°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°
echo. 
set /P origem="-- Digite a origem: "
if not exist %origem% (echo. & echo ---- O caminho %origem% nÆo existe. Verifique-o por favor & echo. & pause & GOTO COPIA_ROBOCOPY)
set /P destino="-- Digite o Destino: "
if not exist %destino% (echo. & echo ---- O caminho %destino% nÆo existe. & GOTO opcao_criar_destino_COPIA_ROBOCOPY ) else ( GOTO continua_COPIA_ROBOCOPY )



:opcao_criar_destino_COPIA_ROBOCOPY
set /P op="---- Deseja criar? (s/n): "
if %op%==s (mkdir %destino% & if exist %destino% (echo ---- Pasta %destino% criada!! & GOTO continua_COPIA_ROBOCOPY ) else (echo ---- Erro na cria‡Æo da pasta & timeout 5 & GOTO COPIA_ROBOCOPY)) else (echo. & echo Reiniciando programa... & timeout 5 & GOTO COPIA_ROBOCOPY)
if %op%==S (mkdir %destino% & if exist %destino% (echo ---- Pasta %destino% criada!! & GOTO continua_COPIA_ROBOCOPY ) else (echo ---- Erro na cria‡Æo da pasta & timeout 5 & GOTO COPIA_ROBOCOPY)) else (echo. & echo Reiniciando programa... & timeout 5 & GOTO COPIA_ROBOCOPY)



:continua_COPIA_ROBOCOPY
echo.
echo -- Digite alguma pasta ou arquivo para ignorar durante a c¢pia
set /P exclusoes="-- (Caso nÆo queira, pressione 'Enter'): "
echo.
echo.
echo -- Preparando para executar a c¢pia, Aguarde por favor...
echo.
timeout 5 /NOBREAK
robocopy %origem% %destino% /R:0 /W:0 /S /XF "desktop.ini" /XF "ntuser.dat" /XF "ntuser.ini" /XD "Ambiente de ImpressÆo" /XD "Ambiente de Rede" /XD "System Volume Information" /XD "Dados de Aplicativos" /XD "Application Data" /XD "Local Settings" /XD "Configura‡äes Locais" %exclusoes%
echo.
echo.
echo  ÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂ
echo  ³                                         **** Conclu¡do ****                                      ³
echo  ÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁ
echo.
set /P opcao="-- Deseja Fazer outra c¢pia? (s/n): "

if %opcao%==s ( cls & GOTO COPIA_ROBOCOPY ) else ( GOTO MENU_ALL )
if %opcao%==S ( cls & GOTO COPIA_ROBOCOPY ) else ( GOTO MENU_ALL )



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (2) - Alterar impressora padrão -- python
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:CHANGE_PRINTER_DEFAULT
cls
title Script para altera‡Æo da impressora padrÆo do sistema -- Created by Generson Avelino

pythony --version
if %ERRORLEVEL% EQU 0 ( GOTO EXEC_CHANGE_PRINTER_DEFAULT ) else ( GOTO ERRO_CHANGE_PRINTER_DEFAULT )

:ERRO_CHANGE_PRINTER_DEFAULT
cls
echo.
echo   ===================================================================
echo   ==                      **** ERRO ****                           ==
echo   ===================================================================
echo   ==    Python nÆo instalado ou NÆo consta na vari vel de          ==
echo   ==  ambiente do Windows!!!                                       ==
echo   ===================================================================
echo   ==                                                               ==
echo   ==  (1) - Reiniciar script                                       ==
echo   ==  (2) - Voltar a p gina inicial                                ==
echo   ==                                                               ==
echo   ===================================================================
set /P opcao="------ "
if %opcao% EQU 1 ( goto CHANGE_PRINTER_DEFAULT ) else ( goto MENU_ALL ) 
if %opcao% EQU 2 ( goto MENU_ALL ) else ( goto MENU_ALL ) 



:EXEC_CHANGE_PRINTER_DEFAULT
cls
echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
echo.
:: ---Listagem de impressoras instaladas
echo   ************************************************************************
echo   ** OBS: Caso ocorra erro na execu‡Æo, verifique                       **
echo   **      se o m¢dulo 'pywin32' est  instalado e se a                   **
echo   **      versÆo do Python ‚ a 3.8 ou acima                             **
echo   **                                                                    **
echo   **      Para instalar o m¢dulo execute:                               ** 
echo   **          'pip install pywin32'                                     **
echo   **                                                                    **
echo   **      Para instalar o Python, fa‡a o download em:                   **
echo   **           https://www.python.org/downloads/                        **
echo   ************************************************************************
echo.
echo ------------------------------------------------------------------------
echo -- Listando Impressoras Instaladas, por favor aguarde...               
echo.
wmic printer get name
echo.
:: ---Variável para definir impressora padrão
echo ------------------------------------------------------------------------
echo -- Define a nova impressora padrao:                                   --
set /P i="-- "

:: ---Montagem de programa em Python
:: Importação do módulo de impressão do Windows
echo import win32print >C:\ProgramData\setprintdefault.py
:: Execução de subrotina para definir impressora padrão
echo win32print.SetDefaultPrinter(r"%i%") >>C:\ProgramData\setprintdefault.py

:: ---Executando arquivo Python
python C:\ProgramData\setprintdefault.py

:: ---Verificando a alteração
echo.
echo ------------------------------------------------------------------------
echo -- Verificando alteracao...
echo.
for /f "tokens=1*" %%a in ('wmic printer get name^, default ^| find /i "TRUE"') do echo Impressora padrao definida: %%~b

:: ---Deletando arquivo gerado automaticamente
del /F C:\ProgramData\setprintdefault.py
echo.
echo.
echo -------------------------------------------------------
echo ------------  FINALIZADO  -----------------------------
echo -------------------------------------------------------
echo.
echo ------------------------------------------------------------------------
set /P op="--Reiniciar script? (s/n): "
if %op% EQU s ( goto CHANGE_PRINTER_DEFAULT ) else ( goto MENU_ALL )
if %op% EQU S ( goto CHANGE_PRINTER_DEFAULT ) else ( goto MENU_ALL )



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (3) - Abrir fila de impressão de impressora
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:OPEN_QUEUE_PRINTER 
cls
echo ************************************
echo ** Created by Generson Avelino    **
echo ************************************
echo.
echo *********************************************
echo **  Abrir fila de impressão de impressora  **
echo *********************************************
echo.
echo ------------------------------------------------------------
echo -- Impressoras Detectadas:
echo.
wmic printer list status
echo.
echo ------------------------------------------------------------
set /P imp="-- Abrir fila de impressao de: "

start /D %windir%\System32 /B rundll32.exe printui.dll,PrintUIEntry /o /n "%imp%"

echo ------------------------------------------------------------
set /P op="-- Reiniciar script? (s/n): "
if %op%==s ( goto OPEN_QUEUE_PRINTER ) else ( goto MENU_ALL )
if %op%==S ( goto OPEN_QUEUE_PRINTER ) else ( goto MENU_ALL )



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (4) - Habilitar wallpaper customizado na tela de login do windows
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:CHANGE_WALLPAPER_LOGIN_SCREEN
cls
title Habilitar wallpaper customizado na tela de login do windows
echo ************************************
echo ** Created by Generson Avelino    **
echo ************************************
echo.
echo *******************************************************************
echo **  Habilitar wallpaper customizado na tela de login do windows  **
echo *******************************************************************
echo.
echo.
set pathToImageWindows7=C:\Windows\System32\oobe\info\backgrounds
set pathToImageWindows81And10=C:\ProgramData\Personalization
echo ------------------------------------------------------------------------
echo -- Criando Pastas para receber Wallpaper                              --
echo ------------------------------------------------------------------------
echo.
mkdir %pathToImageWindows7%
mkdir %pathToImageWindows81And10%
echo.
echo ------------------------------------------------------------------------
echo -- C¢pia do Wallpaper (Formato: JPG)                                  --
echo ------------------------------------------------------------------------
echo --   Por favor coloque o caminho da imagem que deseja definir ou      --
echo -- arraste a imagem para dentro da janela.                            --
echo ------------------------------------------------------------------------
set /P image="-- Imagem: "
copy "%image%" %pathToImageWindows7%\backgroundDefault.jpg /Y
copy "%image%" %pathToImageWindows81And10%\backgroundDefault.jpg /Y
echo.
echo ------------------------------------------------------------------------
echo -- Alterando registro...                                              --
echo ------------------------------------------------------------------------
echo.
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI\Background /v OEMBackground /t REG_DWORD /d 1 /F
REG ADD "HKCU\Control Panel\Desktop /v Wallpaper" /t REG_SZ /d 1 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImagePath /t REG_SZ /d %pathToImageWindows81And10%\backgroundDefault.jpg /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImageStatus /t REG_DWORD /d 1 /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImageUrl /t REG_SZ /d %pathToImageWindows81And10%\backgroundDefault.jpg /F
REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /t REG_SZ /F
echo.
echo ------------------------------------------------------------------------
echo ---------------------- FINALIZADO --------------------------------------
echo ------------------------------------------------------------------------
echo.
pause
goto MENU_ALL

 

::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (5) - Instalar gpedit no Windows 10 home
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:INSTALL_GPEDIT_WIN10HOME
cls
echo ************************************
echo ** Created by Generson Avelino    **
echo ************************************
echo.
echo ******************************************
echo **  Instalar gpedit no Windows 10 home  **
echo ******************************************
echo.
echo.
echo   ------------------------------------------------------------------------
echo   --                    AVISO!!!                                        --
echo   ------------------------------------------------------------------------
ECHO   --  Fa‡a esse procedimento se seu sistema nÆo tiver o gerenciador de  --
echo   -- Pol¡tica de grupo.                                                 --
echo   ------------------------------------------------------------------------
echo   -- (1) - Continuar                                                    --
echo   -- (2) - Voltar a p gina inicial                                      --
echo   ------------------------------------------------------------------------
set /P op="----- "
echo.
if %op%==1 ( goto INSTALL_GPEDIT_WIN10HOME__CONFIRM ) else ( goto MENU_ALL )
if %op%==2 ( goto MENU_ALL ) else ( goto MENU_ALL )
:INSTALL_GPEDIT_WIN10HOME__CONFIRM 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientExtensions-Package~3*.mum >C:\ProgramData\List.txt 
dir /b C:\Windows\servicing\Packages\Microsoft-Windows-GroupPolicy-ClientTools-Package~3*.mum >>C:\ProgramData\List.txt 

for /f %%i in ('findstr /i . C:\ProgramData\List.txt 2^>nul') do dism /online /norestart /add-package:"C:\Windows\servicing\Packages\%%i"

del C:\ProgramData\List.txt /F /Q
echo   ------------------------------------------------------------------------
echo   ------------------------- FINALIZADO -----------------------------------
echo   ------------------------------------------------------------------------ 
pause
goto MENU_ALL



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (6) - Corrigir miniaturas de ícones
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:RESET_ICONS
cls
echo ************************************
echo ** Created by Generson Avelino    **
echo ************************************
echo.
echo *************************************
echo **  Corrigir miniaturas de ícones  **
echo *************************************
echo.
echo ------------------------------------------------------------------------
echo -- Encerrando "explorer.exe"
echo.
taskkill /IM explorer.exe /F
echo.
echo ------------------------------------------------------------------------
echo -- Excluindo cache de ¡cones
echo.
DEL /A /F /Q "%localappdata%\IconCache.db"
DEL /A /F /Q "%localappdata%\Microsoft\Windows\Explorer\iconcache*"
echo.
echo ------------------------------------------------------------------------
echo -- Iniciando "explorer.exe"
echo.
start /D %windir%\System32 /B explorer.exe
echo.
echo ------------------------------------------------------------------------
echo -- Voltando a pasta de execu‡Æo
echo.
timeout /T 4 /NOBREAK
explorer.exe .\
pause
GOTO MENU_ALL



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (7) - Gerenciamento de compartilhamentos de rede
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:MANAGER_SHARE_NETWORK
title Gerenciar compartilhamentos de rede -- Created by Generson Avelino
cls

echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
echo.
echo   ###########################################################
echo   ##         Gerenciar compartilhamentos de rede           ##
echo   ###########################################################
echo.
echo --Compartilhamentos encontrados:
net share
echo.
echo   -------------------------------------------------------------
echo   --    Selecione uma Op‡Æo                                  --
echo   -------------------------------------------------------------
echo   -- ( 1 ) Excluir compartilhamento                          --
echo   -- ( 2 ) Criar compartilhamento                            --
echo   -- ( 3 ) Sair                                              --
echo   -------------------------------------------------------------
set /P opManager="---- "
if %opManager%==1 ( goto MANAGER_SHARE_NETWORK_EXCLUIR ) else ( goto MENU_ALL )
if %opManager%==2 ( goto MANAGER_SHARE_NETWORK_CRIAR ) else ( goto MENU_ALL )
if %opManager%==3 ( goto MENU_ALL ) else ( goto MENU_ALL )


:MANAGER_SHARE_NETWORK_EXCLUIR
echo.
echo -------------------------------------------------------------
set /P nameShare="-- Digite o nome do compartilhamento para excluir: "
net share "%nameShare%" /delete
echo.
echo -------------------------------------------------------------
set /P reset="-- Deseja come‡ar denovo? (s/n): "

if %reset%==s ( goto MANAGER_SHARE_NETWORK ) else ( goto MENU_ALL )
if %reset%==S ( goto MANAGER_SHARE_NETWORK ) else ( goto MENU_ALL )


:MANAGER_SHARE_NETWORK_CRIAR
echo.
echo -------------------------------------------------------------
set /P nameShare="-- Digite o nome do compartilhamento: "
set /P pathShare="-- Digite o local para compartilhar: "
echo -- Permissäes (READ, CHANGE, FULL):
set /P permissions="-- "

net share "%nameShare%"=%pathShare% /GRANT:todos,%permissions% /UNLIMITED
echo.
echo -------------------------------------------------------------
set /P reset="-- Deseja come‡ar denovo? (s/n): "

if %reset%==s ( goto MANAGER_SHARE_NETWORK ) else ( goto MENU_ALL )
if %reset%==S ( goto MANAGER_SHARE_NETWORK ) else ( goto MENU_ALL )




::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (8) - Matar processo
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:KILL_PROCESS
title Script (Encerrar Programa com 'Taskkill') -- Created by Generson Avelino

cls
echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
start "Processos Atuais" /D %windir%\System32 /I cmd /c "color 17 && tasklist && echo. && pause"
echo.
echo ±------------------------------------------------------------- 
echo ±-- Digite o nome do programa que deseja finalizar:
echo ±-- Formato: ('nome do programa'.'extensÆo do programa') 
set /p nameProgram="±------ "
echo ±

:KILL_PROCESS_optionInit     
set /p option=" ±-- Encerrar  rvore inteira do programa? (s/n): "
echo ±
echo ±-------------------------------------------------------------
if %option% EQU s (taskkill /IM %nameProgram% /F /T & goto KILL_PROCESS_optionExit) else (if %option% EQU S (taskkill /IM %nameProgram% /F /T & goto KILL_PROCESS_optionExit) else (if %option% EQU n (taskkill /IM %nameProgram% /F & goto KILL_PROCESS_optionExit) else (if %option% EQU N (taskkill /IM %nameProgram% /F & goto KILL_PROCESS_optionExit) else (echo ±****Op‡Æo Incorreta**** & echo. & goto KILL_PROCESS_optionInit))))

:KILL_PROCESS_optionExit
echo ±-------------------------------------------------------------
echo ±
echo ± 
set /p optionExit="±-- Deseja continuar? (s/n): "
if %optionExit% EQU s (goto KILL_PROCESS) else (if %optionExit% EQU S (goto KILL_PROCESS) else (if %optionExit% EQU n (GOTO MENU_ALL) else (if %optionExit% EQU N (GOTO MENU_ALL) else (echo ±**Op‡Æo Incorreta**** & echo. & goto KILL_PROCESS_optionExit))))



::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::
:: (9) - Mudar IP
::++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++::

:CHANGE_IP
title Script para Mudan‡a de IP -- Created by Generson Avelino
cls
echo   ************************************
echo   ** Created by Generson Avelino    **
echo   ************************************
echo.
echo   ########################################################
echo   ##            Script para Mudan‡a de IP               ##
echo   ##----------------------------------------------------##
echo   ##       DNS Prim rio PadrÆo: 8.8.8.8                 ##
echo   ##      DNS Secun rio PadrÆo: 8.8.4.4                 ##
echo   ########################################################
echo.
echo -----Interfaces Encontradas:
netsh interface show interface

echo -------------------------------------------------------------
set /P interface="-----> Nome da interface a ser modificada: "
echo. && echo IP Atual de "%interface%": && echo. && netsh interface ipv4 show ipaddresses "%interface%" | find /I "endere" && echo.
set /P ip="------------> Novo Ip: "
set /P mSub="----> M scara de Sub.: "
set /P gate="------------> Gateway: "
echo.
echo.
echo -------------------------------------------------------------
echo -----Mudando DNS prim rio e secund rio (Respectivamente)
timeout /T 3 /NOBREAK
netsh interface ipv4 set dnsserver "%interface%" static 8.8.8.8 primary
if %errorlevel%==0 ( echo --DNS Prim rio alterado com sucesso!! )
netsh interface ipv4 add dnsserver "%interface%" 8.8.4.4
if %errorlevel%==0 ( echo --DNS Secud rio alterado com sucesso!! )
echo.
echo.
echo -------------------------------------------------------------
echo -----Mudando IP:
netsh interface ipv4 set address "%interface%" static %ip% %mSub% %gate%

if %errorlevel%==0 ( echo --IP alterado com sucesso!! )
echo.
echo.
echo -------------------------------------------------------------
echo -----Revisar configura‡äes de "%interface%"?(s/n):
set /P rev="----- "
echo.
if %rev%==s ( goto CHANGE_IP_REV_CONT ) else ( goto MENU_ALL )
if %rev%==S ( goto CHANGE_IP_REV_CONT ) else ( goto MENU_ALL )
if %rev%==n ( goto CHANGE_IP_FINAL ) else ( goto MENU_ALL )
if %rev%==N ( goto CHANGE_IP_FINAL ) else ( goto MENU_ALL )


:CHANGE_IP_ERRO
cls
echo.
echo   ------------------------------------
echo   --     Opcao Incorreta            --
echo   ------------------------------------
echo.
:CHANGE_IP_FINAL
set /P op="---- Reiniciar o script (s/n): "
if %op%==s ( goto CHANGE_IP ) else ( goto CHANGE_IP_ERRO )
if %op%==S ( goto CHANGE_IP ) else ( goto CHANGE_IP_ERRO )
if %op%==n ( goto MENU_ALL ) else ( goto CHANGE_IP_ERRO )
if %op%==N ( goto MENU_ALL ) else ( goto CHANGE_IP_ERRO )

:CHANGE_IP_REV_CONT
timeout /T 7 /NOBREAK
netsh interface ipv4 show config "%interface%"
echo.
echo.
goto CHANGE_IP_FINAL