(package-initialize)

;; Display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-message t)

;; Backups
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Custom file
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(ivy-mode 1)
(counsel-mode 1)

;; Key Bindings
(global-set-key (kbd "C-s") 'swiper)
