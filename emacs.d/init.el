;; Marmalade repo required by starter-kit
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
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

