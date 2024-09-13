;; spell checking

(use-package flyspell
  :ensure t
  :defer t
  :hook (text-mode . (lambda ()
		       (flyspell-mode 1))))

(provide '80-spellcheck)
