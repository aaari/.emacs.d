;;; http://accomplish-nothing.blogspot.jp/2013/03/helmskk.html
;;; SKKとhelmのキーバインド競合回避
(setq dired-bind-jump nil)

;;; helm内でCtrl-hを有効にする設定
(eval-after-load 'helm
  '(progn
     (define-key helm-map (kbd "C-h") 'delete-backward-char)))

(eval-after-load 'helm-files
  '(progn
     (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)))



(require 'helm-config)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)


;; Command-y か Meta-y で anything-show-kill-ring
(define-key global-map (kbd "s-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
;; Command-r で anything-resume
(define-key global-map (kbd "s-r") 'helm-resume)

(define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
(define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

