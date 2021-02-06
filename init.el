(add-to-list 'load-path "~/.emacs.d/load.d/")

(require 'setup-appearance)
(require 'setup-packages)
(require 'setup-misc)
(require 'setup-cpp-ide)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-basic-offset 4)
 '(package-selected-packages
   '(darkokai-theme srefactor clang-format format-all smart-tab dap-mode company-lsp yasnippet flycheck lsp-treemacs lsp-ivy company-box which-key use-package treemacs lsp-mode ivy flatland-theme doom-modeline)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
