;; 解析shell中的颜色信息
(autoload 'ansi-color-for-comint-mode-on "ansi-color" nil t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on t)

;; Ctrl-c ← 还原之前的窗口配置
(when (fboundp 'winner-mode)
  (winner-mode)
  (windmove-default-keybindings))

;; 去除欢迎界面
(setq inhibit-startup-message t)

;; 显示行号
(global-linum-mode 1)
(put 'set-goal-column 'disabled nil)

;; 取消备份原文件(filename~)
;(setq make-backup-files nil)

;; 自动备份设置
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.saves"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

(provide 'init-others)
