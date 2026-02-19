@echo off
REM Antigravity Kit - Installer (Windows CMD)

setlocal enabledelayedexpansion

set "RED=[31m"
set "GREEN=[32m"
set "YELLOW=[33m"
set "BLUE=[34m"
set "CYAN=[36m"
set "NC=[0m"

set "SCRIPT_DIR=%~dp0"
set "AG_KIT_DIR=%USERPROFILE%\.ag-kit"

if "%~1"=="" goto interactive
if "%~1"=="setup" goto setup
if "%~1"=="global" goto global_install
if "%~1"=="install" goto install_opencode
if "%~1"=="gui" goto open_gui
if "%~1"=="remove" goto remove
if "%~1"=="help" goto help
goto help

:help
echo.
echo Antigravity Kit Installer
echo.
echo Usage: install.bat [command] [options]
echo.
echo Commands:
echo   setup [path]     Setup in project (default: current)
echo   global          Install globally
echo   install         Install OpenCode CLI
echo   gui             Open OpenCode GUI
echo   remove          Remove installation
echo   help            Show this help
echo.
echo Options:
echo   -f              Force overwrite
goto :end

:interactive
echo.
echo ╔═══════════════════════════════════════════╗
echo ║   Antigravity Kit - Installer            ║
echo ╚═══════════════════════════════════════════╝
echo.
echo   1. Setup in current project
echo   2. Setup in specific project
echo   3. Install globally
echo   4. Install OpenCode CLI
echo   5. Open GUI
echo   6. Exit
echo.
set /p choice="Select [1-6]: "

if "!choice!"=="1" goto setup_current
if "!choice!"=="2" goto setup_specific
if "!choice!"=="3" goto global_install
if "!choice!"=="4" goto install_opencode
if "!choice!"=="5" goto open_gui
if "!choice!"=="6" goto :end
goto interactive

:setup_current
call :setup "."
goto :end

:setup_specific
set /p path="Enter project path: "
call :setup "!path!"
goto :end

:setup
set "TARGET=%~2"
if "%TARGET%"=="" set "TARGET=."
cd /d "%TARGET%"

set "FORCE=%~3"

echo %CYAN%Setting up in: %CD%%NC%

REM Copy .claude/
if "%FORCE%"=="-f" (
    if exist .claude rmdir /s /q .claude
)
if not exist .claude (
    xcopy /e /q "%SCRIPT_DIR%.claude" ".claude\" >nul
    echo %GREEN%✓ Copied .claude/%NC%
) else (
    echo %YELLOW%! .claude already exists%NC%
)

REM Create .agent symlink
if not exist .agent (
    mklink /d .agent .claude >nul 2>&1
    echo %GREEN%✓ Created .agent symlink%NC%
)

REM Create .opencode structure
if not exist .opencode\agents mkdir ".opencode\agents"
if not exist .opencode\skills mkdir ".opencode\skills"

for %%f in (.claude\agents\*.md) do (
    if not exist ".opencode\agents\%%~nxf" (
        mklink ".opencode\agents\%%~nxf" "..\.claude\agents\%%~nxf" >nul 2>&1
    )
)

for /d %%d in (.claude\skills\*) do (
    if not exist ".opencode\skills\%%~nd" (
        mklink /d ".opencode\skills\%%~nd" "..\.claude\skills\%%~nd" >nul 2>&1
    )
)

echo %GREEN%✓ Setup complete!%NC%
goto :end

:global_install
echo %YELLOW%Installing globally to: %AG_KIT_DIR%%NC%

if not exist "%AG_KIT_DIR%" mkdir "%AG_KIT_DIR%"
xcopy /e /q "%SCRIPT_DIR%.claude" "%AG_KIT_DIR%\.claude\" >nul 2>&1
xcopy /e /q "%SCRIPT_DIR%.opencode" "%AG_KIT_DIR%\.opencode\" >nul 2>&1

echo %GREEN%✓ Installed to %AG_KIT_DIR%%NC%
echo %CYAN%To use globally in a project:%NC%
echo   mklink /d .claude %AG_KIT_DIR%\.claude
goto :end

:install_opencode
echo %YELLOW%Installing OpenCode CLI...%NC%
choco install opencode -y >nul 2>&1
if errorlevel 1 (
    echo %RED%Failed. Install manually: https://opencode.ai%NC%
) else (
    echo %GREEN%✓ OpenCode CLI ready!%NC%
)
goto :end

:open_gui
where opencode >nul 2>&1
if errorlevel 1 (
    echo %RED%OpenCode not installed%NC%
) else (
    start opencode --gui
)
goto :end

:remove
cd /d "%~2"
if exist .claude rmdir /s /q .claude
if exist .agent rmdir /s /q .agent
if exist .opencode rmdir /s /q .opencode
echo %GREEN%✓ Removed from %CD%%NC%

:end
pause
