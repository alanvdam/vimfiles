This is my ~/.vim dir.

# Installation

* Clone the repo: `git clone https://github.com/alanvdam/vimfiles.git ~/.vim`
* Grab the plugin submodules `cd ~/.vim && git submodule init && git submodule update`
* Link the `.vimrc` file like `ln -s ~/.vim/vimrc ~/.vimrc`

# Other notes

* I use Mac Vim `brew install macvim` which is compiled with ruby support. (Command-T requires Ruby)
* For Command-T `cd ~/vim/bundle/command-t/ruby/command-t && ruby extconf.rb && make`
* For loading the plugins the Pathogen plugin is used

[Scroolooses vim files](https://github.com/scrooloose/vimfiles) are used as inspiration.
