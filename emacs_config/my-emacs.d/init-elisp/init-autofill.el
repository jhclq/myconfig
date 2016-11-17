;; auto-fill-mode配置
;; 在python-mode中自动开启auto-fill-mode
(add-hook 'python-mode-hook 'turn-on-auto-fill)
;; 在org-mode中自动开启auto-fill-mode
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(provide 'init-autofill)
