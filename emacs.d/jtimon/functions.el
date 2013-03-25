
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; FULLSCREEN

(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (if (equal (frame-parameter nil 'fullscreen) 'maximized) 
         'fullboth
       'maximized)
     ;; (when (frame-parameter nil 'fullscreen) 'maximized)
     ;; (when (not (frame-parameter nil 'fullscreen)) 'fullboth)
     ))
  )

(toggle-fullscreen)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; IRC
(defun irc ()
  "Connect to the freenode"
  (interactive)
  (erc :server "irc.freenode.net"
       :port 6667
       :nick irc-nick
       :password irc-password))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; POMODORO

;; Emacs macro to add a pomodoro item
(fset 'pomodoro
      "[ ]")

;; Emacs macro to add a pomodoro table
;;
;; | G | Organization | [ ] |
;; |   |              |     |
(fset 'pomodoro-table
      [?| ?  ?G ?  ?| ?  ?O ?r ?g ?a ?n ?i ?z ?a ?t ?i ?o ?n ?  ?| ?  ?\[ ?  ?\] ?  ?| tab])

