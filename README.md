# windows and wsl setup

My personal setup

If using WSL, install font from https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf and put in `C:/Windows/Fonts`

Or download from https://www.nerdfonts.com/font-downloads

Set default WSL font in Windows terminal settings

## linux setup

Copy and paste the below:

```sh
sudo apt-get install bat && \
mkdir -p ~/.local/bin && ln -s $(which batcat) ~/.local/bin/bat; \
sudo apt install fd-find && ln -s $(which fdfind) ~/.local/bin/fd; \
sudo apt-get install fzf && sudo apt-get install zsh && \
sudo apt-get install tmux && \
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm; \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; \
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k; \
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions; \
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting; \
git clone https://github.com/zhiz-m/linux-setup.git ; \
cp ./linux-setup/linux/* ~ && \
yes | rm -r linux-setup
```

If using WSL, recommend to set Ubuntu terminal background to 'Solarized Dark'

## powershell setup

```bash
winget install JanDeDobbeleer.OhMyPosh -s winget
```

Copy `powershell/Microsoft.PowerShell_profile.ps1` to `$PROFILE` and rename accordingly
Copy `powershell/p10k-rainbow.omp.json` to any location and set the path in `Microsoft.PowerShell_profile.ps1` accordingly