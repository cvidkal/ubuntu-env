# replace miirors
sudo sed -i 's@//.*archive.ubuntu.com@//mirrors.ustc.edu.cn@g' /etc/apt/sources.list
#!/bin/sh
sudo apt update
sudo apt install -y vim tmux zsh

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zsh-autgsuggestion
cd ~/.oh-my-zsh/custom/plugins
git clone https://github.com/zsh-users/zsh-autosuggestions.git

# autojump
cd 
git clone https://github.com/wting/autojump.git
cd autojump
./install.py
echo " [[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && source ~/.autojump/etc/profile.d/autojump.sh" >> ~/.zshrc
echo "autoload -U compinit && compinit -u" >> ~/.zshrc

# fzf
cd 
git clone https://github.com/junegunn/fzf.git
cd fzf
./install



