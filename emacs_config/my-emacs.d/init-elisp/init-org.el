;; org-mode配置
;; 打开.org文件时自动启用org-mode
(require 'org)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;; 代码块语法高亮, 通过html导出高亮代码(需要安装htmlize.el)
(setq org-src-fontify-natively t)

;; 设置能被org-babel加载的语言
(org-babel-do-load-languages
 'org-babel-load-languages
 '((C . t)
   (emacs-lisp . t)
   (sh . t)
   (java . t)
   (python .t)))

;; 设置org-mode使用xelatex
(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f"
			      "xelatex -interaction nonstopmode %f"))

;; 开启导出markdown格式
(setq org-export-backends (quote (ascii html icalendar latex md)))

(provide 'init-org)
