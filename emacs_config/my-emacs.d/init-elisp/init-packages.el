;; emacs软件包配置
;; 添加软件包仓库
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(provide 'init-packages)
