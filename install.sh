dir=~/dotfiles
olddir=~/dotfiles_old
files=".bashrc .gitconfig .tmux.conf .vimrc"

echo "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir
echo "Done!"

echo "Changing directory to $dir..."
cd $dir
echo "Done!"

for file in $files; do
  echo "Moving any existing files from ~ to $olddir..."
  mv ~/$file ~/dotfiles_old/
  echo "Creating symlink to $file in home dir"
  ln -s $dir/$file ~/$file
done
