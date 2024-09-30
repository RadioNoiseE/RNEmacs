;; buffer completion framework

(use-package corfu
  :hook (after-init . global-corfu-mode)
  :init (setq corfu-auto t
              corfu-cycle t
              corfu-quit-no-match 'separator
              corfu-preselect 'directory)
  :config (add-hook 'eshell-mode (lambda ()
                                   (setq-local corfu-auto nil)))
  :bind (:map corfu-map
              ([tab] . corfu-next)
              ([backtab] . corfu-previous)
              ([return] . corfu-send)
              ([escape] . corfu-quit)))

(provide '40-autocomp)
