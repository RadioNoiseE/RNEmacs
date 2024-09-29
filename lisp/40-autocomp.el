;; text completion framework

(use-package company
  :init (setq company-idle-delay 0.2
              company-minimum-prefix-length 2)
  :hook (after-init . global-company-mode))

(provide '40-autocomp)
