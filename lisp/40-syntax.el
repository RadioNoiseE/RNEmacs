;; syntax checking

(use-package flycheck
  :defer t
  :config (flycheck-define-checker c/c++-infer
            "A C/C++ syntax checker using Facebook infer."
            :command ("infer" "run" "--"
                      (eval (pcase major-mode
                              ((or `c++-mode `c++-ts-mode) "clang++")
                              ((or `c-mode `c-ts-mode) "clang")))
                      "-c" source
                      "-iquote" (eval (flycheck-c/c++-quoted-include-directory)))
            :error-patterns ((error line-start (file-name) ":" line ": error: " (message) line-end))
            :modes (c-mode c++-mode c-ts-mode c++-ts-mode))
  :custom (flycheck-checkers '(c/c++-infer emacs-lisp opam)))

(provide '40-syntax)
