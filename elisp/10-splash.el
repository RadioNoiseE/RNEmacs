;; splash screen

(use-package dashboard
  :init (setq dashboard-startupify-list '(dashboard-insert-banner
					  dashboard-insert-newline
					  dashboard-insert-init-info)
	      dashboard-startup-banner "~/.emacs.d/spl.png"
	      dashboard-image-banner-max-height 252
	      dashboard-center-content t
	      dashboard-vertically-center-content t)
  :config (dashboard-setup-startup-hook))

(provide '10-splash)
