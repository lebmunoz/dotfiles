
#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc bash_aliases emacs gitconfig tmux.conf"    # list of files/folders to symlink in homedir
fish_files="aliases.fish config.fish"	# list of files/folders to symlink in fish dir

##########

# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# move fish config files in ~/.config/fish to dotfiles_old directory, then create symlinks from the ~/.config/fish to any files in the ~/dotfiles directory specified in $fish_files
for file in $fish_files; do
    echo "Moving fish config files from ~/.config/fish to $olddir"
    mv ~/.config/fish/$file ~/dotfiles_old/
    echo "Creating symlink to $file in .config/fish directory."
    ln -s $dir/$file ~/.config/fish/$file
done
