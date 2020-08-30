function dots --wraps git
  git --work-tree $HOME --git-dir=$HOME/dots.git $argv
end
