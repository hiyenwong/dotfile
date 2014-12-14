#!/bin/bash

function die()
{
    echo "${@}"
    exit 1
}

# Add .old to any existing Vim file in the home directory
for i in "${HOME}/.vim" "${HOME}/.vimrc" "${HOME}/.gvimrc"; do
  if [ -e $i ]; then
    echo "${i} has been renamed to ${i}.old"
    mv "${i}" "${i}.old" || die "Could not move ${i} to ${i}.old"
  fi
done

# Clone Janus into .vim
git clone https://github.com/carlhuda/janus.git "${HOME}/.vim" \
  || die "Could not clone the repository to ${HOME}/.vim"

# Run rake inside .vim
cd "${HOME}/.vim" || die "Could not go into the ${HOME}/.vim"
rake || die "Rake failed."

#change color
echo 'color molokai' >> "${HOME}/.gvimrc.after"

# install powerline
git "clone" "git@github.com:Lokaltog/vim-powerline.git" "${HOME}/.janus/powerline" || die "can't clone powerline"
echo "let g:Powerline_symbols = 'fancy'" >> "${HOME}/.vimrc" || die "cant add powerline"

#install supertab
git "clone" "git@github.com:ervandew/supertab.git" "${HOME}/.janus/supertab" || die "can't clone supertab"
echo "let g:SuperTabDefaultCompletionType = \"<c-x><c-n>\"" >> "${HOME}/.vimrc"

#install vim-rails
#https://github.com/tpope/vim-rails
git "clone" "git clone git://github.com/tpope/vim-rails.git" "${HOME}/.janus/vim-rails" ||die "can't clone vim-rails"
#install vim-bundler
git "clone" "git://github.com/tpope/vim-bundler.git" "${HOME}/.janus/vim-bundler" || die "can't clone vim-bundler"
