# This script has only been tested for arch linux with awesomewm
# make adjustments as needed

# Install ::Misc Apps::
    sudo pacman -S xplr
    
    
# Install ::TERMINAL::
# allacritty, picom
# picom is needed as a compositor for fancy stuff
    sudo pacman -S alacritty picom

    # Copy alacritty config files
    rm /home/$USER/.config/alacritty.toml
    cp alacritty/alacritty.toml /home/$USER/.config/alacritty/
    
# Install ::SHELL::
# zsh, oh-my-zsh, zsh-syntax-highlighting, zsh-autosuggestions, ect
    sudo pacman -S zsh zsh-completions
    # Installs zsh and zsh-completions from pacman
    
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    # Link for above https://github.com/ohmyzsh/ohmyzsh
    
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    # Link for above https://github.com/zsh-users/zsh-syntax-highlighting
    
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    # Link for above https://github.com/zsh-users/zsh-autosuggestions

    # Copy zsh configs to apropreate spots
    rm /home/$USER/.zshrc.pre-oh-my-zsh
    rm /home/$USER/.zshrc
    
    cp zshrc /home/$USER/.zshrc
    cp zshrc.pre-oh-my-zsh /home/$USER/.zshrc.pre-oh-my-zsh
    cp ohmyzsh/Yellow-Jacket.zsh-theme /home/$USER/.oh-my-zsh/custom/themes/
    
# Install ::TEXT EDITORS::
# micro, xclip, textadept
# xclip is needed to use clip board, ctags is needed for a textadept module
    sudo pacman -S micro xclip ctags clangd lua-language-server qt5ct
    
    mkdir /home/$USER/.config/micro/colorchemes # Incase dir does not exist
    
    cp micro/colorschemes/Yellow-Jacket.micro /home/$USER/.config/micro/colorschemes/
    
    rm /home/$USER/.config/micro/bindings.json
    rm /home/$USER/.config/micro/settings.json
    
    cp micro/bindings.json /home/$USER/.config/micro/
    cp micro/settings.json /home/$USER/.config/micro/
    
    wget wget https://raw.githubusercontent.com/YahYahDev/textadept/main/textadept.tar.gz

    tar -xzvf textadept.tar.gz -C /home/$USER/
    mkdir /home/$USER/.textadept
    cp textadept/* /home/$USER/.textadept
    
    echo "goto /etc/environment and add 'QT_QPA_PLATFORMTHEME='qt5ct''"

