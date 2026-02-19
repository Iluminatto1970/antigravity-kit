# Antigravity Kit - Installer (Windows PowerShell)

param(
    [string]$Command = "",
    [string]$Path = ".",
    [switch]$Force,
    [switch]$Remove,
    [switch]$Global,
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
$AgKitDir = if ($env:AG_KIT_DIR) { $env:AG_KIT_DIR } else { "$env:USERPROFILE\.ag-kit" }

function Show-Help {
    Write-Host ""
    Write-Host "${Blue}Antigravity Kit Installer${Reset}"
    Write-Host ""
    Write-Host "Usage: $($MyInvocation.ScriptName) [command] [options]"
    Write-Host ""
    Write-Host "Commands:"
    Write-Host "  setup [path]     Setup in project (default: current dir)"
    Write-Host "  global           Install globally"
    Write-Host "  install          Install OpenCode CLI"
    Write-Host "  gui              Open OpenCode GUI"
    Write-Host "  remove           Remove installation"
    Write-Host "  help             Show this help"
    Write-Host ""
    Write-Host "Options:"
    Write-Host "  -Force           Force overwrite"
    Write-Host ""
}

# Install OpenCode
function Install-OpenCode {
    Write-Host "${Yellow}Installing OpenCode CLI...${Reset}"
    
    if (Get-Command winget -ErrorAction SilentlyContinue) {
        winget install anomalyco.opencode
    }
    elseif (Get-Command choco -ErrorAction SilentlyContinue) {
        choco install opencode -y
    }
    elseif (Get-Command scoop -ErrorAction SilentlyContinue) {
        scoop install opencode
    }
    else {
        Write-Host "${Red}No package manager. Install manually: https://opencode.ai${Reset}"
        return $false
    }
    
    Write-Host "${Green}✓ OpenCode CLI ready!${Reset}"
    return $true
}

# Setup in project
function Setup-Project {
    param([string]$TargetPath = ".", [bool]$ForceOverwrite = $false)
    
    Set-Location $TargetPath
    Write-Host "${Cyan}Setting up in: $(Get-Location)${Reset}"
    
    # Determine source
    if (Test-Path "$ScriptDir\.claude") {
        $SrcDir = "$ScriptDir\.claude"
    }
    elseif (Test-Path "$AgKitDir\.claude") {
        $SrcDir = "$AgKitDir\.claude"
    }
    else {
        Write-Host "${Red}Error: .claude not found${Reset}"
        return $false
    }
    
    # Copy .claude/
    if ($ForceOverwrite -or -not (Test-Path ".claude")) {
        Copy-Item -Recurse $SrcDir ".claude" -Force
        Write-Host "${Green}✓ Copied .claude/${Reset}"
    }
    else {
        Write-Host "${Yellow}! .claude already exists (use -Force to overwrite)${Reset}"
    }
    
    # Create .agent symlink
    if (-not (Test-Path ".agent") -and -not (Test-Path ".agent" -PathType Leaf)) {
        New-Item -ItemType SymbolicLink -Path ".agent" -Target ".claude" -Force | Out-Null
        Write-Host "${Green}✓ Created .agent symlink${Reset}"
    }
    
    # Setup .opencode/
    New-Item -ItemType Directory -Force -Path ".opencode\agents" | Out-Null
    New-Item -ItemType Directory -Force -Path ".opencode\skills" | Out-Null
    
    Get-ChildItem ".claude\agents\*.md" | ForEach-Object {
        $link = ".opencode\agents\$($_.Name)"
        if (-not (Test-Path $link)) {
            New-Item -ItemType SymbolicLink -Path $link -Target "..\.claude\agents\$($_.Name)" -Force | Out-Null
        }
    }
    
    Get-ChildItem ".claude\skills" -Directory | ForEach-Object {
        $link = ".opencode\skills\$($_.Name)"
        if (-not (Test-Path $link)) {
            New-Item -ItemType SymbolicLink -Path $link -Target "..\.claude\skills\$($_.Name)" -Force | Out-Null
        }
    }
    
    Write-Host "${Green}✓ Setup complete!${Reset}"
    return $true
}

# Install globally
function Install-Global {
    Write-Host "${Yellow}Installing globally to: $AgKitDir${Reset}"
    
    New-Item -ItemType Directory -Force -Path $AgKitDir | Out-Null
    
    Copy-Item -Recurse "$ScriptDir\.claude" "$AgKitDir\" -Force
    Copy-Item -Recurse "$ScriptDir\.opencode" "$AgKitDir\" -Force -ErrorAction SilentlyContinue
    
    Write-Host "${Green}✓ Installed to $AgKitDir${Reset}"
    Write-Host "${Cyan}To use globally in a project:${Reset}"
    Write-Host "  cmd: mklink /D .claude $AgKitDir\.claude"
    Write-Host "  ps1: New-Item -ItemType SymbolicLink -Path .claude -Target $AgKitDir\.claude"
}

# Remove installation
function Remove-Installation {
    param([string]$TargetPath = ".")
    
    Set-Location $TargetPath
    
    if (Test-Path ".claude") { Remove-Item ".claude" -Recurse -Force }
    if (Test-Path ".agent") { Remove-Item ".agent" -Force }
    if (Test-Path ".opencode") { Remove-Item ".opencode" -Recurse -Force }
    
    Write-Host "${Green}✓ Removed from $(Get-Location)${Reset}"
}

# Main
if ($Help) {
    Show-Help
    exit 0
}

switch ($Command) {
    "setup"     { Setup-Project $Path $Force }
    "global"    { Install-Global }
    "install"   { Install-OpenCode }
    "gui"       { 
        if (Get-Command opencode -ErrorAction SilentlyContinue) { 
            opencode --gui 2>$null || opencode 
        } else { 
            Write-Host "${Red}OpenCode not installed${Reset}" 
        } 
    }
    "remove"    { Remove-Installation $Path }
    ""          {
        # Interactive mode
        Write-Host ""
        Write-Host "${Blue}╔═══════════════════════════════════════════╗${Reset}" -NoNewline
        Write-Host ""
        Write-Host "${Blue}║   Antigravity Kit - Installer            ║${Reset}" -NoNewline
        Write-Host ""
        Write-Host "${Blue}╚═══════════════════════════════════════════╝${Reset}"
        Write-Host ""
        Write-Host "  1. Setup in current project"
        Write-Host "  2. Setup in specific project"
        Write-Host "  3. Install globally"
        Write-Host "  4. Install OpenCode CLI"
        Write-Host "  5. Open GUI"
        Write-Host "  6. Exit"
        Write-Host ""
        $choice = Read-Host "Select [1-6]"
        
        switch ($choice) {
            "1" { Setup-Project "." $Force }
            "2" { 
                $p = Read-Host "Path"
                Setup-Project $p $Force 
            }
            "3" { Install-Global }
            "4" { Install-OpenCode }
            "5" { 
                if (Get-Command opencode -ErrorAction SilentlyContinue) { 
                    opencode --gui 2>$null || opencode 
                } else { 
                    Write-Host "${Red}OpenCode not installed${Reset}" 
                } 
            }
            "6" { exit 0 }
        }
    }
    default     { Show-Help }
}
