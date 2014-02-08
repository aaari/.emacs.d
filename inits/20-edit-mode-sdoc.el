;smart doc
(setq auto-mode-alist
        (append '(("\\.sdoc$" . sdoc-mode)) auto-mode-alist))
    (setq sgml-quick-keys t)
    (autoload 'sdoc-mode "sdoc-mode" nil t)
(add-hook 'sdoc-mode-hook
        (lambda ()
            (when (string-match "\\.sdoc$" (buffer-name))
                (local-unset-key "\""))))
