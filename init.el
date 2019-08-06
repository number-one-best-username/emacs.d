;;; emacs --- config
(package-initialize)

;;; Commentary:

;; Emacs config

;;; Code:

;; Display
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; Package archives
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

;; Seperate custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(require 'smartparens-config)

;; Enable global modes
(ivy-mode 1)
(counsel-mode 1)
(global-flycheck-mode 1)
(global-undo-tree-mode 1)
(smartparens-global-mode 1)
(global-undo-tree-mode 1)

;; Hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Backups
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Key Bindings
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c a") 'org-agenda)

(desktop-save-mode 1)

(provide 'init)
;;; init.el ends here
