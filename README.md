# __DevMyMac__
[![forthebadge](http://forthebadge.com/images/badges/reading-6th-grade-level.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/gluten-free.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/certified-steve-bruhle.svg)](http://forthebadge.com)
[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

#### Welcome To DevMyMac!
DevMyMac is a script that allows the user to setup their OSX / MacOS Computer for Development in

* Ruby
* Java
* Android Development
* Unity3D
* Python
* Javascript
* PHP

See [Below](#guide) For whats installed!

# Using the Script
To use this script, first you must install XCode, or the XCode Command Line Tools. To install the command line tools, use the command:

`xcode-select --install`

Then you can use the script!

`sh -c "$(curl -fsSL https://raw.githubusercontent.com/adamisntdead/DevMyMac/master/setup.sh)"`

<hr/>

# Whats Installed
<a name="guide"></a>

* [Core](#core)
* [Node](#node)
* [Java](#java)
* [Android](#android)
* [Ruby](#ruby)
* [Unity3D](#unity)
* [Databases](#database)

### Core
###### Set Computer Name
<a name="core"></a>
The first thing the script does when you run it, is you are prompted for the name of your computer.
Then, we take the name and use it to set the __hostname and computer name__.

```bash
sudo scutil --set ComputerName "$cpname"
sudo scutil --set HostName "$cpname"
sudo scutil --set LocalHostName "$cpname"
defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$cpname"
```

###### Settings Changes
After this we make a few changes to the settings:

* __Enable Press and hold keys__
`defaults write -g ApplePressAndHoldEnabled -bool false`
* __Show Path in the Finder__
`defaults write com.apple.finder ShowPathbar -bool true`
* __Speed Up Key Press Repeat__
`defaults write NSGlobalDomain KeyRepeat -int 0.02`
* __Speed Up Time Taken to Start Key Repeats__
`defaults write NSGlobalDomain InitialKeyRepeat -int 12`
* __Show The Library Folder__
`chflags nohidden ~/Library`

###### Git Configuration
TODO: Write This
### Node
<a name="node"></a>
TODO: Write This
### Java
<a name="java"></a>
TODO: Write This
### Android Development
<a name="android"></a>
TODO: Write This
### Ruby
<a name="ruby"></a>
TODO: Write This
### Untiy3D
<a name="unity"></a>
TODO: Write This
### Databases
<a name="database"></a>
TODO: Write This