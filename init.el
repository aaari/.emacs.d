;;;load pathの設定
(setq load-path (cons (expand-file-name "~/.emacs.d/elisp") load-path))

;;;カスタムテーマpathの設定
; https://github.com/sellout/emacs-color-theme-solarized
;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")

;;; Package.el
;; M-x package-list-packages
; i: インストール指定
; u: インストール指定取り消し
; x: インストール実行
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;;; init loaderの設定．ファイルが増えたらinits以下に分割する
;; http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0
(require 'init-loader)
(setq init-loader-show-log-after-init 't)
;(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")

;;初期位置
;(cd "~/")
(setq default-directory "~/")
(setq command-line-default-directory "~/")


