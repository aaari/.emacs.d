;https://github.com/smihica/emmet-mode
;https://github.com/smihica/emmet-mode#html-abbreviations
(require 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode) ;; マークアップ言語全部で使う
(add-hook 'css-mode-hook  'emmet-mode) ;; CSSにも使う
(add-hook 'web-mode-hook  'emmet-mode) ;; Web-modeにも使う

(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 2))) ;; indent はスペース2個
(eval-after-load "emmet-mode"
  '(define-key emmet-mode-keymap (kbd "C-j") nil)) ;; C-j は newline のままにしておく
;(keyboard-translate ?\C-i ?\H-i) ;;C-i と Tabの被りを回避
;(define-key emmet-mode-keymap (kbd "H-i") 'emmet-expand-line) ;; C-i で展開
(define-key emmet-mode-keymap (kbd "M-i") 'emmet-expand-line) ;; C-i で展開

(setq emmet-preview-default nil) ; previewしない
