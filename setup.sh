# Check if OSX Command line tools are installed
if type xcode-select >&- && xpath=$( xcode-select --print-path ) &&
    test -d "${xpath}" && test -x "${xpath}" ; then
    ###############################################################################
    # Computer Settings                                                           #
    ###############################################################################
    echo "Enter your computer name please?"
    read cpname
    
    sudo scutil --set ComputerName "$cpname"
    sudo scutil --set HostName "$cpname"
    sudo scutil --set LocalHostName "$cpname"
    defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$cpname"
    
    echo "Enable repeat on keydown"
    defaults write -g ApplePressAndHoldEnabled -bool false
    
    echo "Show Path bar in Finder"
    defaults write com.apple.finder ShowPathbar -bool true
    
    echo "Show Status bar in Finder"
    defaults write com.apple.finder ShowStatusBar -bool true
    
    echo "Set a blazingly fast keyboard repeat rate"
    defaults write NSGlobalDomain KeyRepeat -int 0.02
    
    echo "Set a shorter Delay until key repeat"
    defaults write NSGlobalDomain InitialKeyRepeat -int 12
    
    echo "Show the ~/Library folder"
    chflags nohidden ~/Library
    
    echo "set git config values"
    echo "Please enter your name?"
    read name
    git config --global user.name "$name"
    echo "Please enter your git email?"
    read email
    git config --global user.email "$email"
    
    git config --global color.ui true
    
    ###############################################################################
    # Install Applications                                                        #
    ###############################################################################
    
    # Install OhMyZsh
    echo "Installing OhMyZsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    
    # Install Homebrew
    echo "Installing Homebrew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    # Install Nodejs
    echo "Installing NVM"
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.4/install.sh | bash
    
    echo "Installing Nodejs"
    nvm install node
    nvm use node
    
    # Install Homebrew Apps
    echo "Installing Homebrew Command Line Tools"
    brew install \
    mongodb \
    tree \
    wget \
    ack \
    heroku-toolbelt
    
    # Install EMacs
    echo "Installing EMacs"
    brew install emacs --with-cocoa
    brew linkapps emacs
    
    brew tap caskroom/cask
    
    echo "Installing Apps"
    brew cask install \
    google-chrome \
    coderunner \
    evernote \
    firefox \
    spotify \
    gitter \
    github-desktop \
    atom \
    gitkraken \
    obs \
    steam \
    mamp \
    macdown \
    google-drive \
    iterm2
    
    echo "Cleaning Up Cask Files"
    brew cask cleanup
    
    echo "Installing Nodejs Packages"
    sudo npm i -g nodemon gulp simplehttpserver bower
else
   echo "Need to install the OSX Command Line Tools (or XCode) First! Starting Install..."
   # Install XCODE Command Line Tools 
   xcode-select --install
fi
