

;; Cut, Copy and paste where everybody is used to
(cua-mode)

;; I never suspend the frame anyway
(global-set-key (kbd "C-z") 'undo)

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

;; Move between windows with C-<tab>
(global-set-key (kbd "C-<escape>") 'other-window) ;; forward one
(add-hook 'org-mode-hook
          '(lambda () (define-key org-mode-map [(control tab)] nil)))
(global-set-key (kbd "C-S-<escape>") (lambda () (interactive) (other-window -1))) ;; back one

(global-set-key (kbd "C-<tab>") 'next-buffer)
(global-set-key (kbd "C-S-<tab>") 'previous-buffer)

(global-set-key (kbd "M-<escape>") 'other-frame)
(global-set-key (kbd "M-S-<escape>") (lambda () (interactive) (other-frame -1)))

(global-set-key "\C-ci"  'irc)

;; (define-key semantic-mode-map (kbd "C-c , .") 'semantic-ia-fast-jump)
;; (define-key semantic-mode-map [f3] 'semantic-ia-fast-jump)

;; (define-key semantic-mode-map (kbd "C-c , P") 'semantic-analyze-proto-impl-toggle)
;; (define-key semantic-mode-map (kbd "C-c , h") 'semantic-decoration-include-visit)

;; TODO find out why these mode maps don't work, or better, read about
;; the right way to bind keys with hooks and all
;; (define-key flyspell-mode-map (kbd "C-x /") 'flyspell-correct-word-before-point)
(global-set-key (kbd "C-x /") 'flyspell-correct-word-before-point)
