;; programming language envoriment

(use-package tuareg
  :ensure t
  :defer t)

(use-package haskell-mode
  :ensure t
  :defer t)

(use-package proof-general
  :ensure t
  :defer t
  :init (setq proof-splash-enable nil
	      proof-delete-empty-windows t))

(provide 'ple)
