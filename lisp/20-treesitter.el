;; tree-sitter intergration

(use-package tree-sitter
  :hook (after-init . (lambda () (global-tree-sitter-mode)))
  :config (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :after tree-sitter)

(provide '20-treesitter)
