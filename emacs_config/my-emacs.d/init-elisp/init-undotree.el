;; undo-tree配置
;; C-x u进入undo-tree-v-mode
;; p,n上下移动 b,f左右切换 t显示时间戳 选定后q退出
(require 'undo-tree)
(global-undo-tree-mode)

(provide 'init-undotree)
