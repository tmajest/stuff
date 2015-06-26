$env:Path += ";C:\Python34"
$env:Path += ";C:\Program Files (x86)\Vim\vim74"

cd ~

Import-Module PSReadLine 
Set-PSReadlineKeyHandler -Key Ctrl+W -Function BackwardKillWord
Set-PSReadlineKeyHandler -Key Ctrl+l -Function ClearScreen
Set-PSReadlineKeyHandler -Key Ctrl+k -Function ForwardDeleteLine
Set-PSReadlineKeyHandler -Key Ctrl+a -Function BeginningOfLine
Set-PSReadlineKeyHandler -Key Ctrl+e -Function EndOfLine
