;; company配置
;; 自动开启company-mode
(require 'company)
(add-hook 'after-init-hook 'global-company-mode)

(provide 'init-company)
