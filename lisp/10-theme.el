;; overall theming

(use-package spacemacs-theme
  :init (setq spacemacs-theme-comment-bg nil
              spacemacs-theme-comment-italic t)
  :hook (after-init . (lambda () (load-theme 'spacemacs-light t))))

(provide '10-theme)
