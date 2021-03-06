;; 初回起動を速くする
(setq skk-preload t)

;; 句読点設定
;(setq skk-kuten-touten-alist
;  '(
;    (jp . ("。" . "、" ))
;    (en . ("." . ","))
;    ))

(when (require 'skk nil t)
  (global-set-key (kbd "C-x C-j") 'skk-auto-fill-mode) ;;良い感じに改行を自動入力してくれる機能
  (setq default-input-method "japanese-skk")         ;;emacs上での日本語入力にskkをつかう
  (require 'skk-study))                              ;;変換学習機能の追加
