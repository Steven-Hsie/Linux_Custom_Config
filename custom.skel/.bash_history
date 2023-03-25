ls
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh;
wget -P ~/.local/share/fonts/  https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf ;
fc-cache -f -v ;    #設定字體
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k ;
#記得~/.zshrc中設定 ZSH_THEME="powerlevel10k/powerlevel10k"
# zsh-syntax-highlight    #語法highlight（比較傳統與fast-syntax-highlight只能擇一）
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting ;
# fast-syntax-highlight    #語法highlight（比較先進與zsh-syntax-highlight只能擇一）
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting ;
# autosuggestions    #根據歷史給出輸入建議
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions ;
# autocomplete    #自動補齊指令（聖傑覺得太激進）
#git clone https://github.com/marlonrichert/zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete ;
# autopair    #打左括號補上右括號
#git clone https://github.com/hlissner/zsh-autopair.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autopair ;
# zsh-completions    #提供更多的指令補齊
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions ;
curl -Ls https://raw.githubusercontent.com/jarun/nnn/master/plugins/getplugs | sh ;    #NNN插件，可預覽檔案...等等
sh
#########################
#設定nano偵測語法自動高亮
mkdir ~/.config/nano ;
echo "\
include /usr/share/nano/sh.nanorc
include /usr/share/nano/c.nanorc
include /usr/share/nano/cmake.nanorc
include /usr/share/nano/python.nanorc
include /usr/share/nano/json.nanorc 
include /usr/share/nano/man.nanorc
include /usr/share/nano/default.nanorc\
" > ~/.config/nano/nanorc ;
ls
ll
ls -lA
ls
ls -lA
cd Linux_Custom_Config/
ls
cd .UserCustom/
nano user_bashrc 
nano user_rc 
nano user_zshrc 
ls
cd ..
mv .UserCustom/ ~/
ls -lA
mv .UserCustom/ ~/
cs
cd
ls -lA
rm -rf Linux_Custom_Config/
#########################
# 設定bashrc
echo "\
#Set up my custom command
[ -f ~/.UserCustom/user_bashrc ] && source ~/.UserCustom/user_bashrc
" >> ~/.bashrc ;
source ~/.bashrc
nnn
nano .UserCustom/user_zshrc 
#########################
#設定zshrc
echo "\
#Set up my custom command
[ -f ~/.UserCustom/user_zshrc ] && source ~/.UserCustom/user_zshrc
" >> ~/.zshrc ;
source ~/.zshrc
nano .zshrc 
nano .UserCustom/user_zshrc 
#########################
#設定fzf
echo '#fzf
source "/usr/share/fzf/key-bindings.bash"
source "/usr/share/fzf/completion.bash"
' >> ~/.bashrc
echo '#fzf
source "/usr/share/fzf/key-bindings.zsh"
source "/usr/share/fzf/completion.zsh"
' >> ~/.zshrc
nano .zshrc 
nano .bashrc 
# Conda
conda init bash
conda init zsh
conda config --set auto_activate_base false ;
conda update conda -y ;
conda activate base
conda deactivate
tput colors
tput colors 
ls -lA
chsh -s /usr/bin/zsh;
ls -lA
cd .nv
ls
cd ComputeCache/
ls
