;; tree-sitter intergration

(use-package tree-sitter
  :hook (tree-sitter-after-on . tree-sitter-hl-mode)
  :init (global-tree-sitter-mode))

(use-package tree-sitter-langs
  :after tree-sitter)

(provide '20-treesitter)
