; 起動時のWindowの大きさ
(if (boundp 'window-system)
    (setq initial-frame-alist
          (append (list
;                   '(menu-bar-lines . 1)
;                   '(font . "shinonome16-fontset")
                   '(vertical-scroll-bars . nil) ;;スクロールバーはいらない
                   '(width . 110) ;; ウィンドウ幅
                   '(height . 65) ;; ウィンドウの高さ
                   '(top . 0) ;;表示位置
                   '(left . 750) ;;表示位置
                   )
                  initial-frame-alist)))
(setq default-frame-alist initial-frame-alist)

;透明度変更
;(setq mac-transparency-alpha 80)
(setq default-frame-alist
      (append (list
               '(alpha . (100 95))
               ) default-frame-alist))


;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; フォント設定 ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;
;fontをRictyに
;; (set-face-attribute 'default nil
;;                    :family "Ricty"
;;                    :height 140)
;; (set-fontset-font
;;  nil 'japanese-jisx0208
;;  (font-spec :family "Ricty"))
;(set-fontset-font
; nil 'japanese-jisx0208
; (font-spec :family "Ricty"))
