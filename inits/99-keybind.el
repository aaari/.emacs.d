;; キーバインド定義
(global-set-key "\C-h" 'backward-delete-char)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-r" 'replace-string)  ;文字置換
(global-set-key "\C-m" 'newline-and-indent)

;; 折り返しトグルコマンド
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)


;;emacs休止(for emacsclient)
;(global-set-key (kbd "C-x C-c") 'ns-do-hide-emacs)
;;M-x exit で emacs終了
;(defalias 'exit 'save-buffers-kill-emacs)
