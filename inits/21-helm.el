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

(helm-mode 1)

;; 文字列を入力してから検索するまでのタイムラグを設定する（デフォルトは 0.1）
;(setq helm-input-idle-delay 0.2)


;; キーバインドの設定
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-;") 'helm-for-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
;(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-z") 'helm-do-grep)


;; Command-y か Meta-y で anything-show-kill-ring
(define-key global-map (kbd "s-y") 'helm-show-kill-ring)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
;; Command-r で anything-resume
(define-key global-map (kbd "s-r") 'helm-resume)


;; ミニバッファで C-k 入力時にカーソル以降を削除する（C-u C-k でも同様の動きをする）
(setq helm-delete-minibuffer-contents-from-point t)

; ファイルの履歴とbuffer一覧の保存数の変更(通常は20)
(setq recentf-max-saved-items 100)

; クリップボードの数(通常は20)
(setq kill-ring-max 100)


;; ディレクトリの自動補完を切る
(setq helm-ff-auto-update-initial-value nil)

;; TABで任意補完。選択肢が出てきたらC-nやC-pで上下移動してから決定することも可能
(define-key helm-c-read-file-map (kbd "TAB") 'helm-execute-persistent-action)
;; TAB で補完する
;; ただ，TABを押しても先頭のヒットしたものに展開されてしまうっぽい
;(define-key helm-find-files-map (kbd "<tab>") 'helm-execute-persistent-action)
;(define-key helm-read-file-map (kbd "<tab>") 'helm-execute-persistent-action)


;; スマート補完
;(setq helm-ff-smart-completion t)
