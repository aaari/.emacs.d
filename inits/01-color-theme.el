;(load-theme 'solarized-dark t)
;https://github.com/bbatsov/solarized-emacs
(require 'solarized)

;; make the fringe stand out from the background
;(setq solarized-distinct-fringe-background t)

;; make the modeline high contrast
;(setq solarized-high-contrast-mode-line t)

(deftheme solarized-dark "The dark variant of the Solarized color theme")
(create-solarized-theme 'dark 'solarized-dark)
(provide-theme 'solarized-dark)
