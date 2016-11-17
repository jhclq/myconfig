;; 显示行号
;; (global-linum-mode 1)
;; (put 'set-goal-column 'disabled nil)

(add-to-list 'load-path "~/.emacs.d/init-elisp/")

;; 包管理配置文件
(require 'init-packages)
(require 'init-c)
(require 'init-autofill)
(require 'init-company)
(require 'init-org)
(require 'init-undotree)
(require 'init-latex)
(require 'init-ui)
(require 'init-others)
