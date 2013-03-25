
(global-set-key (kbd "<escape>")      'keyboard-quit)
;; search how to bind stuff for minibuffer
;; (global-set-key (kbd "<escape>")      'command abort-recursive-edit)
;; C-g runs the command abort-recursive-edit, which is an interactive
;; built-in function in `C source code'.

;; It is bound to C-g, <menu-bar> <minibuf> <quit>, C-].

;; (abort-recursive-edit)

;; Abort the command that requested this recursive edit or minibuffer input.

(global-set-key [f11] 'toggle-fullscreen)

;; (global-set-key (kbd "C-n") 'next-buffer)
;; (global-set-key (kbd "M-p") 'previous-buffer)

;; (global-set-key (kbd "C-<tab>") 'next-buffer)
;; (global-set-key (kbd "C-S-<iso-lefttab>") 'previous-buffer)

(global-set-key (kbd "C-<tab>") 'other-window)
(global-set-key (kbd "C-S-<iso-lefttab>") 'other-window)

(global-set-key (kbd "C-<escape>") 'next-buffer)
(global-set-key (kbd "C-S-<escape>") 'previous-buffer)

(global-set-key (kbd "M-<escape>") 'other-frame)

(global-set-key "\C-ci"  'irc)

;; (define-key semantic-mode-map (kbd "C-c , .") 'semantic-ia-fast-jump)
;; (define-key semantic-mode-map [f3] 'semantic-ia-fast-jump)

;; (define-key semantic-mode-map (kbd "C-c , P") 'semantic-analyze-proto-impl-toggle)
;; (define-key semantic-mode-map (kbd "C-c , h") 'semantic-decoration-include-visit)
