Write-Output '-------------------------------------------------------------------------------'
Write-Output 'Welcome to Nori-vim, my Neovim setup!'
Write-Output 'Version 1.1.0'
Write-Output 'Setup script for: WINDOWS'
Write-Output '-------------------------------------------------------------------------------'
Write-Output 'This script will install vim-plug, the plugin manager for my Neovim congiruation here which is also crucial for the plugins included with this Neovim configuration.'
Write-Output '--> vim-plug will install from https://github.com/junegunn/vim-plug'
$choice = Read-Host -Prompt 'Do you wish to continue (y)? '
if ($choice.ToUpper() -eq "Y") {
	iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
	Write-Output 'No errors? Great! Finally, open Neovim and run :PlugInstall!'
} else {
	Write-Output 'Invalid choice. Setup will not proceed.'
}


