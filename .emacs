; line numbers

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(global-linum-mode t)
(setq linum-format "%4d   ")
; line number color
(set-face-foreground 'linum "#FFFF33")
; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
; open multiple windows vertically
(setq split-height-threshold nil)
(setq split-width-threshold 0)
; stop blinking cursor
(blink-cursor-mode nil)
; set cursor color
(set-cursor-color "#FF4500")
