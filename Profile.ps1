# requires: posh-git, starship, fzf, eza, bat, terraform, git date relative

Import-Module posh-git

Invoke-Expression (&starship init powershell)

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

del alias:ls -Force

function list-icons { eza --icons }
function list-all { eza --icons -al }
function list-tree { eza --icons -a --long --tree -I ".git|obj|bin|node_modules" }
function list-tred { eza -aD --long --tree -I ".git|obj|bin|node_modules" }
function Open-GitProject {
    fzf --preview "bat --color=always {}" | ForEach-Object {
        $file = $_
        $root = git -C (Split-Path $file) rev-parse --show-toplevel
        code $root --goto $file
    }
}

function Switch-GitBranch {
    
    $selected = git branch -a | 
    ForEach-Object { $_.Trim() } | 
    fzf --height 40% --reverse --preview 'git log --color=always --pretty=format:"%h %Cblue%ad%Creset %ae %Cgreen%s%Creset" {}' 
    
    if ($selected) {
        Write-Host "Checking out branch: $selected" -ForegroundColor Cyan
        git checkout $selected
    }
}

Set-Alias -Name ls -Value list-icons
Set-Alias -Name ll -Value list-all
Set-Alias -Name tree -Value list-tree
Set-Alias -Name tred -Value list-tred
Set-Alias -Name tf -Value terraform
Set-Alias -Name f -Value Open-GitProject
Set-Alias -Name fb -Value Switch-GitBranch

