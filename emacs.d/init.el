;; Package source repositories
(require 'package)
(setq package-archives '(
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("elpa" . "http://tromey.com/elpa/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                         ("orgmode" . "http://orgmode.org/elpa/")
))
(package-initialize)

;; Package auto-install
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-eshell starter-kit-js
                                  ;; starter-kit-lisp
                                  color-theme-sanityinc-tomorrow
                                  ;; undo-tree
                                  dtrt-indent
                                  markdown-mode
                                  less-css-mode
                                  auto-complete)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Set file for Custom and load it
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Pretty colors
(load-theme 'sanityinc-tomorrow-night)

;; Personal data like email, nicknames, passwords...
(load-file "~/private/emacs.el")

;; why not?
(eshell)

