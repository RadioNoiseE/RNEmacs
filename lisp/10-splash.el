;; splash screen

(use-package dashboard
  :hook (window-setup . (lambda () (dashboard-setup-startup-hook)
                          (dashboard-refresh-buffer)))
  :init (setq initial-buffer-choice 'dashboard-open)
  :config (setq dashboard-hide-cursor t
                dashboard-buffer-name "*splash*"
                dashboard-startupify-list '(dashboard-insert-banner
                                            dashboard-insert-init-info)
                dashboard-startup-banner "~/.emacs.d/spl.png"
                dashboard-image-banner-max-height 290
                dashboard-center-content t
                dashboard-vertically-center-content t))

(provide '10-splash)
