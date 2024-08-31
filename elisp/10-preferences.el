;; preferences

(global-auto-revert-mode t)
(delete-selection-mode t)
(electric-pair-mode t)

(when (display-graphic-p) (toggle-scroll-bar -1)
                          (tool-bar-mode -1)
			  (pixel-scroll-precision-mode 1))

(setq inhibit-startup-message t)
(setq display-line-numbers-type 'relative)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2024/bin/x86_64-linux"))
(add-to-list 'exec-path "/usr/local/texlive/2024/bin/x86_64-linux")

(provide '10-preferences)
