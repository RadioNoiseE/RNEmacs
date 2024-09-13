;; eldoc in a child frame

(use-package eldoc-box
  :ensure t
  :hook ((eglot-managed-mode . eldoc-box-hover-at-point-mode)
	 (eldoc-mode . eldoc-box-hover-at-point-mode))
  :config (setq eldoc-box-max-pixel-width 320
                eldoc-box-max-pixel-height 100))

(provide '50-docbox)
