#Invoke-Expression (&starship init powershell)
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt -Theme fish

# ENV VARS
$env:PAGER = 'less.exe'


# OPTIONS
Set-PSReadlineKeyHandler -Key Tab -Function Complete # Tab-Completion similar to Bash and Clink



# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
