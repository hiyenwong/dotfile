;;EMACS config 
;;Dexter Wong
;;Email: robinwong51@gmail.com

;;load lips path
(add-to-list 'load-path "~/.emacs.d/lisps")
;; clipboard
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;;don't tabify after rectangle commands
(transient-mark-mode 1) ;;no region when it is not highlighted
(setq cua-keep-region-after-copy t) ;;standard windows behavior

;; show matching parentheses
(show-paren-mode t)

;; no splash screen
(setq inhibit-splash-screen t)

;; disable toolbar
(tool-bar-mode -1)

;; disable scrollbar
(scroll-bar-mode -1)

;; turn off the annoying bell, have a flashing square
(setq visible-bell t)

;; highlight the current line
(global-hl-line-mode 1)

;; customize the background color
(set-face-background 'hl-line "#222")

;; disable backup
(setq backup-inhibited t)

;; disable auto save
(setq auto-save-default nil)
(put 'erase-buffer 'disabled nil)

;; drive out the mouse when it's too near to the cursor
(mouse-avoidance-mode 'animate)

;; delete the selected region when something is typed or with DEL
(delete-selection-mode 1)

;; Use control-arrow keys for window resizing
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)

;;hide the menu bar
;;(menu-bar-mode -1)

;;haskell-mod
(load-library "haskell-site-file")
(add-to-list 'auto-mode-alist '("\\.hs\\'" . haskell-mode))

(require 'php-mode)

;;color-themes
(require 'color-theme)
(color-theme-initialize)
(color-theme-charcoal-black)

;;org mode
(require 'org-install)

;;Dired single
(require 'dired-single)

; Install mode-compile to give friendlier compiling support!
;(autoload 'mode-compile)
