;; teco mode

(autoload 'teco-mode "teco-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.te[sc]\\'" . teco-mode))
(add-to-list 'file-coding-system-alist '("\\.te[sc]\\'" . utf-8))

(provide '30-tecomode)
