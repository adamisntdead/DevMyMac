# Install XCODE Command Line Tools
xcode-select --install

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew Apps
brew install \
node \
mongodb \
tree \
wget \
ack \
heroku-toolbelt

brew tap caskroom/cask

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
cleanmymac 

#set git config values
git config --global user.name "Adam Kelly" && \
git config --global user.email "adam.guitar12@gmail.com" && \
git config --global github.user adamisntdead && \
git config --global color.ui true
