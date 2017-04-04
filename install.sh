dir=~/dotfiles
olddir=~/dotfiles_old

echo "Creating $olddir for backup of any existing dotfiles in ~..."
mkdir -p $olddir
echo "Done"

echo "Changing directory to $dir..."
cd $dir
echo "Done"

for file in .*; do
  if [ -f ~/$file ]; then
    echo "Moving $file from ~ to $olddir..."
    mv ~/$file ~/dotfiles_old/
    echo "Done"
  fi
  echo "Creating symlink to $file in home dir..."
  ln -s $dir/$file ~/$file
  echo "Done"
done
