(prefer-coding-system 'utf-8)

;;;; メニュー、ツールバー消去
;;;;;(tool-bar-mode 0)
;;;;;(menu-bar-mode -1)

;; file名の補完で大文字小文字を区別しない
(setq completion-ignore-case t)

;;yes-noの選択肢をy-nにする
(fset 'yes-or-no-p 'y-or-n-p)

;;; Autosaveファイルの場所指定
(setq auto-save-list-file-prefix (expand-file-name "~/.emacs.d/.autosave/"))
;;オートセーブファイルを作らない
;;(setq auto-save-default nil)

;; Backup fileの場所指定
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name "~/.emacs.d/.backup"))
            backup-directory-alist))

;;; スクロールを一行ずつにする
;; (setq scroll-step 1)
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)

;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)

;;タブの代わりに半角スペースを使う
(setq-default tab-width 4 indent-tabs-mode nil)

;;;GCを減らして軽くする
;(setq gc-cons-threshold (* 10 gc-cons-threshold))

;;ログの記録行数を増やす
(setq message-log-max 10000)

;;;サーバ起動
;(require 'server)
;(unless (server-running-p)
;  (server-start))

;;;クライアントを終了するとき終了するかどうかを聞かない
;(remove-hook 'kill-buffer-query-functions 'server-kill-buffer-query-function)

;;自動再読み込み
(global-auto-revert-mode 1)

;;; 定義マクロファイル設定
;(defvar kmacro-save-file "~/.emacs.d/inits/70-mymacros.el")

;;; debug用
;(setq debug-on-error nil)

;;; symlinkは必ず追いかける
;(setq vc-follow-symlinks t)
