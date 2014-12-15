


# Load posh-git example profile
. 'C:\GitHub\posh-git\profile.example.ps1'

$GitPromptSettings.EnableFileStatus = $false

Import-Module PSReadLine 
Set-PSReadlineKeyHandler -Key Ctrl+W -Function BackwardKillWord
Set-PSReadlineKeyHandler -Key Ctrl+l -Function ClearScreen
Set-PSReadlineKeyHandler -Key Ctrl+k -Function ForwardDeleteLine
Set-PSReadlineKeyHandler -Key Ctrl+a -Function BeginningOfLine
Set-PSReadlineKeyHandler -Key Ctrl+e -Function EndOfLine
