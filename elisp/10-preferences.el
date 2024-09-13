;; preferences

(global-auto-revert-mode t)
(delete-selection-mode t)
(electric-pair-mode t)

(when (display-graphic-p) (scroll-bar-mode -1)
      (tool-bar-mode -1)
      (pixel-scroll-precision-mode 1))

(setq inhibit-startup-message t)
(setq display-line-numbers-type 'relative)

(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

(defun opam-env ()
  (interactive nil)
  (dolist (var (car (read-from-string (shell-command-to-string "opam config env --sexp"))))
    (setenv (car var) (cadr var))))

(provide '10-preferences)
