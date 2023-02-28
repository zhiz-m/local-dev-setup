$env:POSH_THEMES_PATH =  '~\Documents\OhMyPosh'
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/p10k-rainbow.omp.json" | Invoke-Expression

cd ~