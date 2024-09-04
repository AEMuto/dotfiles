My dotfiles. A work in improvement. Structure and many commented aliases taken from [these dotfiles](https://github.com/xero/dotfiles).

###### Usage

 ```sh
 git clone https://github.com/AEMuto/dotfiles.git ~/.dotfiles
 cd ~/.dotfiles
```
Then use `stow` on a directory or file.

For `zsh` :

```sh
# change accordingly to your package manager 
sudo apt update && sudo apt upgrade -y 
sudo apt install zsh 
sudo chsh -s $(which zsh) $USER
exec zsh 
# applying theme & plugins 
git clone --depth 1 https://github.com/romkatv/powerlevel10k.git ${XDG_CONFIG_HOME}/zsh/themes/powerlevel10k
git clone https://github.com/lukechilds/zsh-nvm.git ${XDG_CONFIG_HOME}/zsh/plugins/zsh-nvm 
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${XDG_CONFIG_HOME}/zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${XDG_CONFIG_HOME}/zsh/plugins/zsh-syntax-highlighting
exec zsh
```
