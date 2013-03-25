
;; server-start, use emacsclient from now on
(server-start)

;; remove promt when you kill the buffer started with emacsclient
;; http://shreevatsa.wordpress.com/2007/01/06/using-emacsclient/
(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;; Pretty colors
;; (load-theme 'sanityinc-solarized-dark)
(load-theme 'sanityinc-tomorrow-night)

;; Saves session, more on http://www.emacswiki.org/emacs/DeskTop
(desktop-save-mode 1)

;; C-c <left> to go to previous windows config
(winner-mode 1)
;;To save and load concrete window configs in registers
;; C-x r w a writes in reg a
;; C-x r j a jumps to reg a

;; Reopen a file when it is modified (only for doc-view and image)
(add-hook 'doc-view-mode-hook 'auto-revert-mode)
(add-hook 'image-mode 'auto-revert-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; STATUS BAR

;; Set column number mode.
(column-number-mode t)

;; Date and time in status bar
(setq display-time-day-and-date t
      display-time-24hr-format t)
(display-time)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; DIRED 

;; Dired-omit to hide "uninteresting" files
;; Toggle with 'M-o'
;; http://www.emacswiki.org/emacs/DiredOmitMode
(require 'dired-x)
(setq-default dired-omit-files-p nil) ; this is buffer-local variable
(setq dired-omit-files
      (concat dired-omit-files "\\|^\\..+$"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; OPEN WITH

(when (require 'openwith nil 'noerror)
  (setq openwith-associations
        (list
         (list (openwith-make-extension-regexp
                '("mpg" "mpeg" "mp3" "mp4"
                  "avi" "wmv" "wav" "mov" "flv"
                  "ogm" "ogg" "mkv" "m4v"))
               "vlc"
               '(file))
         ;; (list (openwith-make-extension-regexp
         ;;        '("xbm" "pbm" "pgm" "ppm" "pnm"
         ;;          "png" "gif" "bmp" "tif" "jpeg" "jpg"))
         ;;       "geeqie"
         ;;       '(file))
         (list (openwith-make-extension-regexp
                '("doc" "xls" "ppt" "odt" "ods" "odg" "odp"))
               "libreoffice"
               '(file))
         ;; '("\\.lyx" "lyx" (file))
         ;; '("\\.chm" "kchmviewer" (file))
         (list (openwith-make-extension-regexp
                '("torrent"))
               "transmission-gtk"
               '(file))
         (list (openwith-make-extension-regexp
                '("deb"))
               "gdebi-gtk"
               '(file))
         (list (openwith-make-extension-regexp
                '("pdf" "ps" "ps.gz" "dvi"))
               "evince"
               '(file))
         ))
  (openwith-mode 1))
