My VIM config
=============

This file contains the Vim settings I use for Python
development.

CONTENTS
--------

* pathogen -- VIM package manager

Requiring pathogen:

* NERDtree -- directory tree as a window https://github.com/scrooloose/nerdtree.git
* zencoding-vim -- HTML editing with the use of abbreviations http://github.org/mattn/zenconding-vim
* gundo -- VIM undo history tree navigation plugin
* threesome -- turns VIM into a friendly merge tool
* vim-haml -- HAML, SASS and SCSS editing support (syntax, indent, ...)
* markdown -- Markdown editing support

Colors:

* colors/molokai.vim -- a nice dark theme
* colors/xoria256.vim -- another nice 256-color dark theme

Tidy:

* extrawhite.vim -- highlight trailing whitespace

Python stuff:

* pep8.vim -- check for pep8 violations
* pydoc.vim -- python stdlib docs in Vim help format
* pyflakes.vim -- check Python code with pyflakes
* python_ipdb.vim -- set pdb breakpoints into python scripts
* python_pydiction.vim -- module and keyword completion for python
* python.vim -- the obligatory indentation fix

Generic:

* restore_window.vim -- save and restore vim window geometry between runs

INSTALL
-------

Some of the modules require pathogen now. It can be installed with the simple
bash script that downloads the latest version of it from github, assuming you
have hg-git extension on your Mercurial:

~/.vim/ $ ./bin/get-pathogen.sh
