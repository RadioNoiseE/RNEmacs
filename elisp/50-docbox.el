;; eldoc in a child frame

(use-package eldoc-box
  :hook ((eglot-managed-mode . eldoc-box-hover-mode)
	 (eldoc-mode . eldoc-box-hover-mode))
  :config (setq eldoc-box-max-pixel-width 300
                eldoc-box-max-pixel-height 110))

(provide '50-docbox)
