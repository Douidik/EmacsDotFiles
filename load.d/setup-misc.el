(setq gc-cons-threshold (* 512 1024 1024)
      gc-cons-percentage 0.6)

(setq visible-bell t)
(delete-selection-mode t)

(global-set-key (kbd "C-x C-u") 'undo)

(use-package ivy
  :config
  (ivy-mode t)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package treemacs
  :bind
  (:map global-map
	([f8] . treemacs)
	("C-<f8>" . treemacs-select-window))
  :config
  (treemacs)
  (setq treemacs-is-never-other-window t)
  (setq treemacs-show-hidden-files nil)
  (setq treemacs-resize-icons 22))

(use-package which-key
  :config
  (which-key-mode t)
  (setq which-key-mode-idle-delay 0.35)
  (setq which-key-popup-type 'side-window)
  (setq which-key-max-frame-height 9))

(provide 'setup-misc)
