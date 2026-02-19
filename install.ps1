# Antigravity Kit - OpenCode Installer (Windows PowerShell)

param(
    [string]$TargetPath = ".",
    [switch]$Setup,
    [switch]$Install,
    [switch]$GUI,
    [switch]$Help
)

$ErrorActionPreference = "Stop"

# Colors
$Red = "`e[31m"
$Green = "`e[32m"
$Yellow = "`e[33m"
$Blue = "`e[34m"
$Cyan = "`e[36m"
$Reset = "`e[0m"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

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
    Write-Host "${Yellow}Installing OpenCode CLI...${Reset}"
    
    # Try winget
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
        Write-Host "${Red}No package manager found.${Reset}"
        Write-Host "Please install manually: https://opencode.ai"
        return $false
    }
    
    Write-Host "${Green}OpenCode CLI ready!${Reset}"
    return $true
}

# Setup in current directory
function Setup-Project {
    param([string]$Path = ".")
    
    Set-Location $Path
    
    Write-Host "${Yellow}Setting up Antigravity Kit in: $(Get-Location)${Reset}"
    
    if (Test-Path ".claude") {
        # Create .opencode directories
        New-Item -ItemType Directory -Force -Path ".opencode\agents" | Out-Null
        New-Item -ItemType Directory -Force -Path ".opencode\skills" | Out-Null
        
        # Create symlinks for agents
        Write-Host "${Blue}Creating agent symlinks...${Reset}"
        Get-ChildItem ".claude\agents\*.md" | ForEach-Object {
            $name = $_.Name
            $link = ".opencode\agents\$name"
            if (-not (Test-Path $link)) {
                New-Item -ItemType SymbolicLink -Path $link -Target "..\.claude\agents\$name" -Force | Out-Null
            }
            Write-Host "  ✓ $name"
        }
        
        # Create symlinks for skills
        Write-Host "${Blue}Creating skill symlinks...${Reset}"
        Get-ChildItem ".claude\skills" -Directory | ForEach-Object {
            $name = $_.Name
            $link = ".opencode\skills\$name"
            if (-not (Test-Path $link)) {
                New-Item -ItemType SymbolicLink -Path $link -Target "..\.claude\skills\$name" -Force | Out-Null
            }
            Write-Host "  ✓ $name"
        }
        
        # Create .agent symlink for compatibility
        if (-not (Test-Path ".agent") -and -not (Test-Path ".agent" -PathType Leaf)) {
            New-Item -ItemType SymbolicLink -Path ".agent" -Target ".claude" -Force | Out-Null
            Write-Host "  ✓ .agent (symlink)"
        }
        
        Write-Host "${Green}Setup complete!${Reset}"
    } else {
        Write-Host "${Red}Error: .claude/ directory not found${Reset}"
        return $false
    }
    
    return $true
}

# Install to external project
function Install-ToProject {
    param([string]$Path)
    
    if (-not (Test-Path $Path)) {
        Write-Host "${Red}Directory not found: $Path${Reset}"
        return $false
    }
    
    Write-Host "${Yellow}Installing to: $Path${Reset}"
    
    # Copy .claude/
    Copy-Item -Recurse "$ScriptDir\.claude" "$Path\"
    Write-Host "${Green}✓ Copied .claude/${Reset}"
    
    Set-Location $Path
    
    # Create .agent symlink
    if (-not (Test-Path ".agent")) {
        New-Item -ItemType SymbolicLink -Path ".agent" -Target ".claude" -Force | Out-Null
    }
    Write-Host "${Green}✓ Created .agent symlink${Reset}"
    
    # Setup .opencode/
    New-Item -ItemType Directory -Force -Path ".opencode\agents" | Out-Null
    New-Item -ItemType Directory -Force -Path ".opencode\skills" | Out-Null
    
    Get-ChildItem ".claude\agents\*.md" | ForEach-Object {
        New-Item -ItemType SymbolicLink -Path ".opencode\agents\$($_.Name)" -Target "..\.claude\agents\$($_.Name)" -Force | Out-Null
    }
    
    Get-ChildItem ".claude\skills" -Directory | ForEach-Object {
        New-Item -ItemType SymbolicLink -Path ".opencode\skills\$($_.Name)" -Target "..\.claude\skills\$($_.Name)" -Force | Out-Null
    }
    
    Write-Host "${Green}✓ Created .opencode/ structure${Reset}"
    Write-Host "${Green}Installation complete!${Reset}"
}

# Show menu
function Show-Menu {
    Write-Host ""
    Write-Host "${Blue}Select option:${Reset}"
    Write-Host "  1. Full Install (OpenCode + Setup)"
    Write-Host "  2. Setup in current directory"
    Write-Host "  3. Install to external project"
    Write-Host "  4. Install OpenCode CLI only"
    Write-Host "  5. Open OpenCode GUI"
    Write-Host "  6. Exit"
    Write-Host ""
    $choice = Read-Host "Enter [1-6]"
    return $choice
}

# Main execution
function Main {
    # Auto-setup if running from repo
    if ((Test-Path "$ScriptDir\.claude") -and -not $Help) {
        if (Test-Path "$ScriptDir\.opencode") {
            Write-Host "${Green}Antigravity Kit already configured!${Reset}"
        } else {
            Setup-Project $ScriptDir
        }
        
        if ($Setup) { return }
        if ($Install) { 
            Install-OpenCode
            return 
        }
        if ($GUI) {
            if (Test-OpenCode) { opencode --gui 2>$null || opencode }
            return
        }
        
        $choice = Show-Menu
    } else {
        $choice = Show-Menu
    }
    
    switch ($choice) {
        "1" {
            if (-not (Test-OpenCode)) { Install-OpenCode }
            else { Write-Host "${Green}OpenCode already installed${Reset}" }
            Setup-Project $ScriptDir
            Write-Host ""
            Write-Host "${Green}✓ Installation complete! Run 'opencode' to start${Reset}"
        }
        "2" {
            Setup-Project $ScriptDir
        }
        "3" {
            Write-Host ""
            $target = Read-Host "Enter target project path"
            Install-ToProject $target
        }
        "4" {
            Install-OpenCode
        }
        "5" {
            if (Test-OpenCode) { opencode --gui 2>$null || opencode }
            else { Write-Host "${Red}OpenCode not installed. Run option 4 first.${Reset}" }
        }
        "6" {
            Write-Host "${Yellow}Goodbye!${Reset}"
            exit 0
        }
        default {
            Write-Host "${Red}Invalid option${Reset}"
        }
    }
}

Main
