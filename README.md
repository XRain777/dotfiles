# install:
```shell
apt install \
apt-transport-https \
build-essential \
git \
mc \
curl \
zsh \
git-crypt \
rcm \
zoxide \
bat \
fzf \
python3.10-venv \
zlib1g-dev \
libbz2-dev \
libncurses-dev \
libffi-dev \
libreadline-dev \
libssl-dev \
libsqlite3-dev \
tk-dev \
liblzma-dev \
gdal-bin \
libgeos-dev \
libheif-dev \
default-libmysqlclient-dev \
pavucontrol \
gpick
```

# oh-my-zsh
```shell
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# powerlevel10k zsh theme
```shell
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

# google-chrome
```shell
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

# brave-browser
```shell
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
```

# skype
```shell
wget https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skypeforlinux-64.deb
sudo apt -f install
```

# slack
```shell
xdg-open https://slack.com/downloads/linux
```

# telegram
```shell
wget https://telegram.org/dl/desktop/win64
tar xvf tsetup.4.0.2.tar.xz
mkdir ~/apps
mv Telegram ~/apps/
ln -s ~/apps/Telegram/Telegram ~/.local/bin/Telegram
```

# kitty
```shell
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/kitty 50
```

# neovim
```shell
wget https://github.com/neovim/neovim/releases/download/v0.7.2/nvim-linux64.deb
sudo dpkg -i nvim-linux64.deb
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 50
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 50
```

# lazygit
```shell
wget https://github.com/jesseduffield/lazygit/releases/download/v0.34/lazygit_0.34_Linux_x86_64.tar.gz
tar xvf lazygit_0.34_Linux_x86_64.tar.gz -C ~/apps/lazygit/
ln -s ~/apps/lazygit/lazygit ~/.local/bin/lazygit
```

# lsd
```shell
wget https://github.com/Peltoche/lsd/releases/download/0.22.0/lsd_0.22.0_amd64.deb
sudo dpkg -i lsd_0.22.0_amd64.deb
```

# asdf-vm
```shell
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.0
asdf plugin-add python
asdf plugin-add poetry https://github.com/asdf-community/asdf-poetry.git
```

# asdf python
```shell
asdf install python latest:3.7
asdf install python latest:3.8
```

# poetry
```shell
curl -sSL https://install.python-poetry.org | python3 -
```

# delta
```shell
wget https://github.com/dandavison/delta/releases/download/0.13.0/git-delta_0.13.0_amd64.deb
sudo dpkg -i git-delta_0.13.0_amd64.deb
```

# install configs
```shell
cd ~/.dotfiles/
rcup -v
```
