;; splash screen

(use-package dashboard
  :init
  (setq initial-buffer-choice 'dashboard-open)
  (add-hook 'window-setup-hook (lambda () (dashboard-refresh-buffer)))
  :config (dashboard-setup-startup-hook)
  :custom
  (dashboard-hide-cursor t)
  (dashboard-buffer-name "*splash*")
  (dashboard-startupify-list '(dashboard-insert-banner
			       dashboard-insert-init-info))
  (dashboard-startup-banner "~/.emacs.d/spl.png")
  (dashboard-image-banner-max-height 290)
  (dashboard-center-content t)
  (dashboard-vertically-center-content t))

(provide '10-splash)
