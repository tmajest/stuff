param (
    [switch]$PsReadLine = $false,
    [switch]$Vim = $false,
    [switch]$Python = $false
)

$tempDir = "~\setupFiles"

$powershellDir = "~\Documents\WindowsPowerShell"
$powershellProfileLink = "https://raw.githubusercontent.com/tmajest/stuff/master/Microsoft.PowerShell_profile.ps1"
$profileName = "Microsoft.Powershell_profile.ps1"

$vimRoot = "C:\Program Files (x86)\Vim"
$vimLink = "ftp://ftp.vim.org/pub/vim/pc/gvim74.exe"
$gvimExe = "gvim74.exe"
$vimrcLink = "https://raw.githubusercontent.com/tmajest/stuff/master/_vimrc"
$vimrcName = "_vimrc"
$codeschoolLink = "https://raw.githubusercontent.com/tmajest/stuff/master/codeschool.vim"
$codeschoolName = "codeschool.vim"

$pythonLink = "https://www.python.org/ftp/python/3.4.3/python-3.4.3.msi"
$pythonMsi = "python-3.4.3.msi"

function Setup() {
    # Create temp directory
    mkdir $tempDir -Force

    # Install OneGet
    Get-PackageProvider -Name NuGet -ForceBootstrap
}

function CleanUp() {
    # Delete temp dir
    rmdir -Force -Recurse $tempDir
}

function InstallPsReadLine() {
    Find-Module -Name PsReadLine | Install-Module

    mkdir $powershellDir -Force
    wget $powershellProfileLink -OutFile $tempDir\$profileName
    cp $tempDir\$profileName $powershellDir -Force
}

function InstallVim() {
    wget $vimLink -OutFile $tempDir\$gvimExe
    wget $vimrcLink -OutFile $tempDir\$vimrcName
    wget $codeschoolLink -OutFile $tempDir\codeschoolName

    start $tempDir\$gvimExe

    cp $tempDir\$vimrcName $vimRoot -Force
    cp $tempDir\$codeschoolName $vimRoot\vimfiles\colors
}

function InstallPython() {
    wget $pythonLink -OutFile $temp\$pythonMsi
    start $tempDir\$pythonMsi /quiet
}

function InstallAll() {
    InstallPsReadLine
    InstallVim
    InstallPython
}


function Run() {
    Setup

    if ($PsReadLine || $Vim || $Python) {
        if ($PsReadLine)
            InstallPsReadLine

        if ($Vim)
            InstallVim

        if ($Python)
            InstallPython
    }
    else {
        InstallAll
    }

    CleanUp
}

Run
