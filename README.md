# evil-hardcore.el

![fallen angel](https://github.com/daantjie/evil-hardcore.el/blob/master/fallen-angel.jpg)

[![Build Status](https://travis-ci.org/daantjie/evil-hardcore.el.svg?branch=master)](https://travis-ci.org/daantjie/evil-hardcore.el)
[![Coverage Status](https://coveralls.io/repos/github/daantjie/evil-hardcore.el/badge.svg?branch=master)](https://coveralls.io/github/daantjie/evil-hardcore.el?branch=master)

I'm fed up with looking down at the keyboard and seeing my finger stuck on the
`j` key. I know *how* to use Evil properly; I just need to get the muscle
memory, and that's not happening if I don't force myself to use it.

## Usage

It's not on MELPA (yet!), so I recommend you do the following:

 - Create a directory for all your Emacs packages which aren't on MELPA.
   ```
   mkdir ~/.emacs.d/packages && cd ~/.emacs.d/packages
   ```
 - Add all subdirectories of that root directory to your load path.
   ```
   (let ((default-directory "~/.emacs.d/packages"))
     (normal-top-level-add-subdirs-to-load-path))
   ```
 - Download `evil-hardcore`.
   ```
   git clone "https://github.com/daantjie/evil-hardcore.el"
   ```
 - Add `evil-hardcore` to your init.
   ```
   (require 'evil-hardcore)

   (evil-hardcore-global-mode)
   ```
 
## Bindings

 - `j` and `k` are Evil motion wrappers
   around [Vertigo](https://github.com/noctuid/vertigo.el)'s `vertigo--jump` –
   see the [README](https://github.com/noctuid/vertigo.el#about) for more info.
