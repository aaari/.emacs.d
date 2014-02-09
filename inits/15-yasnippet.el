(require 'yasnippet)

(setq yas-snippet-dirs
      '("~/.emacs.d/snippets"
        "~/.emacs.d/elpa/yasnippet-20140106.1009/snippets"
        ))

(yas-global-mode 1)

(custom-set-variables '(yas-trigger-key "TAB"))


;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x y i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x y n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x y v") 'yas-visit-snippet-file)
