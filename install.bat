@echo off
REM Antigravity Kit - OpenCode Installer (Windows)
REM Run this script to install and configure OpenCode

echo.
echo ╔═══════════════════════════════════════════════════╗
echo ║   Antigravity Kit - OpenCode Installer          ║
echo ╚═══════════════════════════════════════════════════╝
echo.

REM Check if OpenCode is installed
where opencode >nul 2>nul
if %errorlevel% neq 0 (
    echo OpenCode not found. Installing...
    choco install opencode -y
) else (
    echo OpenCode is already installed
)

REM Setup project structure
echo Setting up project structure...
cd /d "%~dp0"

if not exist ".opencode\agents" mkdir ".opencode\agents"
if not exist ".opencode\skills" mkdir ".opencode\skills"

echo Creating agent symlinks...
for %%f in (.agent\agents\*.md) do (
    mklink ".opencode\agents\%%~nxf" "..\..\.agent\agents\%%~nxf" >nul 2>&1 || echo   ✓ %%~nxf
)

echo Creating skill symlinks...
for /d %%f in (.agent\skills\*) do (
    mklink /D ".opencode\skills\%%~nxf" "..\..\.agent\skills\%%~nxf" >nul 2>&1 || echo   ✓ %%~nxf
)

echo.
echo ✓ Setup complete!
echo.
echo Usage:
echo   opencode           - Start CLI
echo   opencode --gui     - Start GUI
echo.

pause
