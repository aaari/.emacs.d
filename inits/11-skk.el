;; 初回起動を速くする
(setq skk-preload t)

;; 句読点設定
(setq skk-kuten-touten-alist
  '(
    (jp . ("．" . "，" ))
    (en . ("." . ","))
    ))
