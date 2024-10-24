;;; bootstrap.el -*- lexical-binding: t -*-

;; This file initializes the environment variables,
;; which will be processed later.

(defun gen-env-file (path)
  "Read environment variables to PATH."
  (let ((dirname (file-name-directory path)))
    (make-directory dirname t))
  (with-temp-file path
    (setq-local coding-system-for-write 'utf-8-unix)
    (insert
     ";; -*- mode: emacs-lisp -*-\n"
     ";; This file was automatically generated and will be overwritten.\n")
    (insert (pp-to-string process-environment))))

(gen-env-file "~/.emacs.d/local/env.el")
