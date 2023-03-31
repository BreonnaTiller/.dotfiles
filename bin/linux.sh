#!/bin/zsh
# Making sure operating is Linux
uname -a
# Sending error message if uname != Linux
if [uname != Linux]
then
	echo "Error! Linux is not the operating system used." > linuxsetup.log
	exit
else
	echo "Linux is the operating system used."
fi
# Cre4ating the trash directory
mkdir  ~/.TRASH
# Changing the name of .vimrc
mv .vimrc .bup_vimrc
# Writing a message to linuxsetup.log
echo ".vimrc was changed to .bup_vimrc" > linuxsetup.log
# Redirect contents of vimrc file
etc/vimrc > ~/.vimrc
echo "source ~/.dotfiles/etc/bashrc_custom"
