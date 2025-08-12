ssh-keygen -t rsa -b 4096 -f ~/id_rsa -N ""
cat ~/.ssh/id_rsa.pub
# install brew (package manager), see https://brew.sh/ 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "pre-install done. Add your key to github on https://github.com/settings/ssh/new"
echo "Your public key is"
cat ~/.ssh/id_rsa.pub

echo "once added press enter"
read
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone git@github.com:nachtfisch/mac-osx-setup.git dev/mac-osx-setup
cd ~/dev/mac-osx-setup
source install.sh
