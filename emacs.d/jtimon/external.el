
;; Exuberant ctags
(setq path-to-ctags "ctags") ;; <- your ctags path here
(defun create-tags (dir-name)
  "Create tags file."
  (interactive "DDirectory: ")
  (shell-command
   (format "%s -f %s/TAGS -R %s" path-to-ctags dir-name (directory-file-name dir-name)))
  )

;; Rendering plantuml
(defun plantuml-render-buffer ()
  (interactive)
  (message "PLANTUML Start rendering")
  (shell-command (concat "java -jar ~/programas/jar/plantuml.jar " 
                         buffer-file-name))
  (message (concat "PLANTUML Rendered:  " (buffer-name))))

;; Plant UML from org mode
;; #+BEGIN_UML
;;   Alice -> Bob: Authentication Request
;;   Bob --> Alice: Authentication Response
;; #+END_UML
(add-to-list 'load-path "~/.emacs.d/org-export-blocks-format-plantuml.el")
                                        ;(require 'org-export-blocks-format-plantuml)
