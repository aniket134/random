;; load .el files, should be done at top, so you can overwrite things at the bottom
;(add-to-list 'load-path "~/.emacs.d/loadpath/")

;(require 'web-mode)
;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;(setq web-mode-markup-indent-offset 2)
;(setq web-mode-code-indent-offset 2)
;(setq web-mode-css-indent-offset 2)

;; backup in one place. flat, no tree structure
(setq backup-directory-alist '(("" . "~/.emacs.d/emacs-backup")))
