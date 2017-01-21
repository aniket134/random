# install required stuff
sudo apt-get update
sudo apt-get install apache2 emacs24-nox git python-pip apache2 libapache2-mod-wsgi
sudo pip install virtualenv

# make some directories we'll need later
mkdir -p ~/.emacs.d
mkdir -p ~/code

# get the random repo and move the files to the appropriate location
cd ~/code/
git clone https://github.com/aniket134/random.git
sudo mv random/index.html /var/www/
sudo mv random/styles.css /var/www/
mv random/init.el ~/.emacs.d/

