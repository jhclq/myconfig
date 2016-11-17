;; auctex配置
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(setq Tex-auto-save t)
(setq Tex-parse-self t)
(setq-default Tex-master nil)

;;  latex配置
(setq Tex-output-view-style (quote (("^pdf$" "." "evince &o %(outpage)"))))
(add-hook 'LaTex-mode-hook (lambda()
			     (add-to-list 'Tex-command-list '("XeLaTex" "%`xelatex%(mode)'i%t" Tex-run-Tex nil t))
			     (setq Tex-command-default "XeLaTex")))

(provide 'init-latex)
