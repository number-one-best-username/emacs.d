;;; emacs --- custom config

;;; Commentary:

; Custom set

;;; Code:

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(dracula))
 '(custom-safe-themes
   '("b46ee2c193e350d07529fcd50948ca54ad3b38446dcbd9b28d0378792db5c088" default))
 '(org-agenda-files '("~/Workspace/Todo.org"))
 '(package-selected-packages
   '(magit smartparens php-mode undo-tree web-mode flycheck dracula-theme counsel ivy swiper)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'custom)
;;; custom.el ends here
