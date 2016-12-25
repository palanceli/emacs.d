(require-package 'company-c-headers)

(with-eval-after-load 'company
  (add-to-list 'company-backends 'company-c-headers))

(with-eval-after-load 'cc-mode
  (add-hook 'c-mode-common-hook 'hi-minor-mode)
  (define-key c-mode-map  [(tab)] 'company-complete)
  (define-key c++-mode-map  [(tab)] 'company-complete))

                                        ;(use-package company-c-headers
;             :init
;             (add-to-list 'company-backends 'company-c-headers))

;(add-hook 'c-mode-common-hook 'hi-minor-mode)

;(setq c-default-style) "linux" ;; set style to "linux"

;(use-package cc-mode
;             :init
;             (define-key c-mode-map  [(tab)] 'company-complete)
;             (define-key c++-mode-map  [(tab)] 'company-complete)
;             )
(provide 'init-company-c-headers)
