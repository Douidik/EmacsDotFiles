(add-hook 'prog-mode (electric-pair-mode t))
(add-hook 'prog-mode (linum-mode t))

(use-package lsp-mode
  :commands
  (lsp lsp-deferred)
  :init
  (setq lsp-keymap-prefix "C-c C-l")
  :config
  (lsp-enable-which-key-integration t))

(with-eval-after-load 'lsp-mode
  (add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)
  (yas-global-mode))

(use-package company-box)
(use-package lsp-ivy)
(use-package lsp-treemacs)
(use-package flycheck)
(use-package yasnippet)
(use-package company-lsp)
(use-package dap-mode)
(use-package smart-tab)
(use-package format-all)
(use-package clang-format
  :config
  (fset 'c-indent-region 'clang-format-region))
(use-package srefactor
  :bind
  (:map c++-mode-map
	("M-RET" . 'srefactor-refactor-at-point)))

(global-set-key (kbd "M-p") 'ff-find-other-file)

(defun cpp-ide-mode ()
  "Mode used for c++ developement"
  (interactive)
  (flycheck-mode t)
  (smart-tab-mode t)
  (company-mode t)
  (company-box-mode t)
  (hs-minor-mode t)
  (smart-tab-mode t)
  (semantic-mode t)
  (linum-mode t)
  (lsp t)
  (setq company-idle-delay 0.5
	company-minimum-prefix-length 2
	lsp-idle-delay 0.3
	lsp-headerline-breadcrumb-enable t
	lsp-signature-auto-activate t
	lsp-signature-doc-lines 1
	gdb-show-main t
	c-basic-offset 4))

(add-hook 'c++-mode-hook 'cpp-ide-mode)

(provide 'setup-cpp-ide)
