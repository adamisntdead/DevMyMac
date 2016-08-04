###############################################################################
# Computer Settings                                                           #
###############################################################################
echo "Setup computer name"
sudo scutil --set ComputerName "adams-macbook"
sudo scutil --set HostName "adams-macbook"
sudo scutil --set LocalHostName "adams-macbook"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "adams-macbook"

echo "Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

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
git config --global user.name "Adam Kelly" && \
git config --global user.email "adam.guitar12@gmail.com" && \
git config --global github.user adamisntdead && \
git config --global color.ui true

###############################################################################
# Install Applications                                                        #
###############################################################################

# Install XCODE Command Line Tools
xcode-select --install

# Install OhMyZsh
echo "Installing OhMyZsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew Apps
echo "Installing Homebrew Command Line Tools"
brew install \
node \
mongodb \
tree \
wget \
ack \
heroku-toolbelt

brew tap caskroom/cask

echo "Installing Apps"
brew cask install \
google-chrome \
coderunner \
evernote \
firefox \
spotify \
gitter \
boom \
github-desktop \
atom \
gitkraken \
obs \
steam \
mamp \
macdown \
google-drive \
cleanmymac \
iterm2

echo "Installing Nodejs Packages"
sudo npm i -g nodemon gulp simplehttpserver bower
