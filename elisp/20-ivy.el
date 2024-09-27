;; list selection enhancement

(use-package ivy
  :init (setq ivy-use-virtual-buffers t
	      ivy-count-format "(%d/%d) ")
  :config (ivy-mode 1))

(provide '20-ivy)
