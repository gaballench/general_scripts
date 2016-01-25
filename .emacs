;; .emacs config file as for 24-jan-2016.

;; Melpa and Elpa repos
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;; ess-site.el for julia
(load "/home/balleng/.emacs.d/ESS/lisp/ess-site.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#504545" "#ad8572" "#a9df90" "#aaca86" "#91a0b3" "#ab85a3" "#ddbc91" "#bdbdb3"])
 '(custom-enabled-themes (quote (material)))
 '(custom-safe-themes (quote ("0aa12caf6127772c1a38f7966de8258e7a0651fb6f7220d0bbb3a0232fba967f" "870a63a25a2756074e53e5ee28f3f890332ddc21f9e87d583c5387285e882099" "4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "12b4427ae6e0eef8b870b450e59e75122d5080016a9061c9696959e50d578057" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" "8fe17db3ffa7b3d18cbe0989eb3b08a0f24326256dc4472a5f443d7565c7d7cb" "51e228ffd6c4fff9b5168b31d5927c27734e82ec61f414970fc6bcce23bc140d" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)

;; use count-words instead of count-words-region as it works on buffer
;; if no region is selected
(global-set-key (kbd "M-=") 'count-words)

;; multiple cursors
(global-set-key (kbd "C-c m c") 'mc/edit-lines)

;; undo tree mode
;;turn on everywhere
(global-undo-tree-mode 1)
;; make ctrl-z undo
(global-set-key (kbd "C-z") 'undo)
;; make ctrl-Z redo
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-S-z") 'redo)

;; maximized at startup
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

;; sudoku
(load "~/.emacs.d/scripts/sudoku.el")
