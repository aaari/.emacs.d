;;; markdown mode
;;; http://jblevins.org/projects/markdown-mode/markdown-mode.el
(require 'markdown-mode)
(setq auto-mode-alist
      (append
       '(
         ("\\.md$"       . markdown-mode)
         ("\\.markdown$" . markdown-mode)
         ("\\.txt$" . markdown-mode)
         )
       auto-mode-alist))

(setq markdown-command "/usr/local/bin/markdown")

; header level 2 折りたたみ拡張 C-i で展開
(add-hook 'markdown-mode-hook
  (lambda()
    (define-key markdown-mode-map (kbd "C-i") 'markdown-cycle)
                                        ;    (hide-sublevels 2)
  )
)
