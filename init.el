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
(add-to-list 'load-path "/opt/mu/share/emacs/site-lisp/mu4e")

;; Seperate custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'smartparens-config)
(require 'mu4e)

(load custom-file)
(load (expand-file-name "personal.el" user-emacs-directory))

;; mu4e
(setq mail-user-agent 'mu4e-user-agent)
(setq mu4e-mu-binary "/opt/mu/bin/mu")
(setq mu4e-sent-folder   "/Sent")
(setq mu4e-drafts-folder   "/Drafts")
(setq mu4e-trash-folder   "/Trash")
(setq mu4e-get-mail-command "mbsync -a")
(setq send-mail-function 'smtpmail-send-it)

;; Enable global modes
(ivy-mode 1)
(counsel-mode 1)
(global-flycheck-mode 1)
(global-undo-tree-mode 1)
(smartparens-global-mode 1)

;; Hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Backups
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

(defalias 'yes-or-no-p 'y-or-n-p)

;; Key Bindings
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "C-c a") 'org-agenda)

(desktop-save-mode 1)

(provide 'init)
;;; init.el ends here
