;;; インストールされていないものを集める
(require 'cl)
(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く
    init-loader
    js2-mode
    markdown-mode
    popwin
    auto-complete
    emmet-mode
    web-mode
    yasnippet
    helm
    solarized-theme
    multiple-cursors
    ;;    dizzee
    ))
(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
