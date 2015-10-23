# a repository of useful bash shellscripts for Ubuntu :

##**checkintegrity.sh** : 
this is a shellscript that batch checks the integrity of multiple github/svn/hg repositories in a main directory, it should be executed from that main directory.

##**tar.sh** : 
batch tar and compress repositories inside a main directory, it should be executed from that main directory.

##**untar.sh** : 
batch untar and decompress repositories inside a main directory, it should be executed from that main directory.

##**unzip.sh** : 
batch unzip and decompress repositories inside a main directory, it should be executed from that main directory.

##**add-apt-repository**

This is a replacement for the tool found on ubuntu, it can be used to add deb repositories from launchpad to Kali or Debian.

in order touse it, just copy it to /usr/sbin and then in that directory in a terminal type :

sudo chmod +x add-apt-repository

sudo chown root:root add-apt-repository

ps : I found a version of this tool on a forum, but it used full apt-get update to get the authentication key. so I edited it to only pull keys for the added repository ~and voila~.

