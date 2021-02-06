(set-face-attribute 'default nil :font "Ubuntu Mono" :height 110)

(setq custom-safe-themes t)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-time-mode t)
(setq-default cursor-type 'bar)

(use-package doom-modeline
	     :init
	     (doom-modeline-mode t)
	     :custom
	     ((doom-modeline-height 30)))

(use-package flatland-theme)
(use-package all-the-icons)


(load-theme 'darkokai)

(provide 'setup-appearance)
