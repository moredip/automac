PAVED LAPTOP onboarding

## RUN automac
mkdir ~/git
cd ~/git
git clone https://github.com/moredip/automac.git 
# ^ that triggered installing cli dev tools
cd automac
bash general.sh
bash macos.sh
bash dotfiles.sh
bash brew.sh


## MAP CAPS LOCK TO CTRL
Open Keyboard in settings, open Modifier Keys…, map Caps Lock to Ctrl.

## Bootstrap cloud stuff
- Launch Dropbox, sign in
- Wait for ALL THE THINGS to download from Dropbox. The last possible one will be the 1password vault in the root of the Dropbox directory
- Launch 1Password, connect to Dropbox vault

## github auth
- Sign in to github.com
  - upload ssh key to https://github.com/settings/keys
  - cat ~/.ssh/id_rsa.pub | pbcopy

## general setup
- Open Spectacle, allow it to do to stuff
 - open Spectacle preferences, configure it to launch at login
- open ~/dotfiles/SolarizedDark.terminal, then make it your default color scheme in terminal preferences
- launch docker for first time to install command line tools

