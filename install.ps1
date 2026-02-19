# Antigravity Kit - OpenCode Installer (Windows)

param(
    [switch]$Full,
    [switch]$Setup,
    [switch]$Install,
    [switch]$GUI,
    [switch]$CLI
)

$ErrorActionPreference = "Stop"

# Colors
$Red = "`e[31m"
$Green = "`e[32m"
$Yellow = "`e[33m"
$Blue = "`e[34m"
$Reset = "`e[0m"

Write-Host ""
Write-Host "${Blue}╔═══════════════════════════════════════════════════╗${Reset}" -NoNewline
Write-Host ""
Write-Host "${Blue}║   Antigravity Kit - OpenCode Installer          ║${Reset}" -NoNewline
Write-Host ""
Write-Host "${Blue}╚═══════════════════════════════════════════════════╝${Reset}"
Write-Host ""

# Check if OpenCode is installed
function Test-OpenCode {
    try {
        $null = Get-Command opencode -ErrorAction SilentlyContinue
        return $true
    } catch {
        return $false
    }
}

# Install OpenCode
function Install-OpenCode {
    Write-Host "${Yellow}Installing OpenCode...${Reset}"
    
    # Try winget first
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        winget install anomalyco.opencode
    } 
    # Try choco
    elseif (Get-Command choco -ErrorAction SilentlyContinue) {
        choco install opencode -y
    }
    # Try scoop
    elseif (Get-Command scoop -ErrorAction SilentlyContinue) {
        scoop install opencode
    }
    else {
        Write-Host "${Red}No package manager found. Please install OpenCode manually.${Reset}"
        Write-Host "Download from: https://github.com/anomalyco/opencode/releases"
        return $false
    }
    
    Write-Host "${Green}OpenCode installed successfully!${Reset}"
    return $true
}

# Setup project structure
function Setup-Structure {
    Write-Host "${Yellow}Setting up project structure...${Reset}"
    
    $ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
    Set-Location $ScriptDir
    
    # Create .opencode directories
    New-Item -ItemType Directory -Force -Path ".opencode\agents" | Out-Null
    New-Item -ItemType Directory -Force -Path ".opencode\skills" | Out-Null
    
    # Create symlinks for agents
    Write-Host "${Blue}Creating agent symlinks...${Reset}"
    Get-ChildItem ".agent\agents\*.md" | ForEach-Object {
        $agentName = $_.Name
        $target = "..\..\.agent\agents\$agentName"
        $link = ".opencode\agents\$agentName"
        
        if (Test-Path $link) {
            Remove-Item $link -Force
        }
        New-Item -ItemType SymbolicLink -Path $link -Target $target -Force | Out-Null
        Write-Host "  ✓ $agentName"
    }
    
    # Create symlinks for skills
    Write-Host "${Blue}Creating skill symlinks...${Reset}"
    Get-ChildItem ".agent\skills" -Directory | ForEach-Object {
        $skillName = $_.Name
        $target = "..\..\.agent\skills\$skillName"
        $link = ".opencode\skills\$skillName"
        
        if (Test-Path $link) {
            Remove-Item $link -Force -Recurse
        }
        New-Item -ItemType SymbolicLink -Path $link -Target $target -Force | Out-Null
        Write-Host "  ✓ $skillName"
    }
    
    Write-Host "${Green}Project structure setup complete!${Reset}"
}

# Open GUI
function Open-GUI {
    Write-Host "${Yellow}Opening OpenCode GUI...${Reset}"
    
    if (Test-OpenCode) {
        opencode --gui 2>$null || opencode
    } else {
        Write-Host "${Red}OpenCode not installed. Please run with -Full or -Install first.${Reset}"
    }
}

# Start CLI
function Start-CLI {
    Write-Host "${Yellow}Starting OpenCode CLI...${Reset}"
    
    if (Test-OpenCode) {
        opencode
    } else {
        Write-Host "${Red}OpenCode not installed. Please run with -Full or -Install first.${Reset}"
    }
}

# Main menu
function Show-Menu {
    Write-Host ""
    Write-Host "${Blue}Select installation option:${Reset}"
    Write-Host "  1. Full Installation (OpenCode + Setup)"
    Write-Host "  2. Setup Project Structure Only"
    Write-Host "  3. Install OpenCode CLI"
    Write-Host "  4. Open OpenCode GUI"
    Write-Host "  5. Start OpenCode CLI"
    Write-Host "  6. Exit"
    Write-Host ""
    $choice = Read-Host "Enter option [1-6]"
    return $choice
}

# Main execution
function Main {
    # Handle command line switches
    if ($Full) {
        if (-not (Test-OpenCode)) {
            Install-OpenCode
        } else {
            Write-Host "${Green}OpenCode already installed${Reset}"
        }
        Setup-Structure
        Write-Host ""
        Write-Host "${Green}Installation complete! Run 'opencode' to start.${Reset}"
        return
    }
    
    if ($Setup) {
        Setup-Structure
        return
    }
    
    if ($Install) {
        Install-OpenCode
        return
    }
    
    if ($GUI) {
        Open-GUI
        return
    }
    
    if ($CLI) {
        Start-CLI
        return
    }
    
    # Interactive mode
    while ($true) {
        $choice = Show-Menu
        
        switch ($choice) {
            "1" {
                if (-not (Test-OpenCode)) {
                    Install-OpenCode
                } else {
                    Write-Host "${Green}OpenCode already installed${Reset}"
                }
                Setup-Structure
                Write-Host ""
                Write-Host "${Green}Installation complete! Run 'opencode' to start.${Reset}"
                break
            }
            "2" {
                Setup-Structure
            }
            "3" {
                Install-OpenCode
            }
            "4" {
                Open-GUI
            }
            "5" {
                Start-CLI
            }
            "6" {
                Write-Host "${Yellow}Exiting...${Reset}"
                exit 0
            }
            default {
                Write-Host "${Red}Invalid option. Please try again.${Reset}"
            }
        }
    }
}

Main
