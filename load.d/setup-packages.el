(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

;; fix melpa bug
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") 

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)

(setq use-package-always-ensure t)

(provide 'setup-packages)
