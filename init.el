(require 'package) ;; You might already have this line
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/todo/projects.org")))
 '(org-tags-column -76)
 '(package-selected-packages (quote (magit git multiple-cursors helm color-theme)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq inhibit-splash-screen t)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(load-library "insert-link")

;;Display
(require 'helm-config)
(helm-mode 1)
(require 'cl)
(require 'multiple-cursors)

;;;; autocomplete
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/dict")

(setq show-paren-delay 0)
(show-paren-mode 1)
;;Global
(global-set-key (kbd "C-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<up>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c j") 'insert-job-number)
;;org-mode
(require 'org)
(setq org-log-done 'time)
(setq org-log-done 'note)
(setq org-startup-indented t)

;;highlighting
(add-hook 'emacs-lisp-mode-hook 'highlight-defined-mode)
(add-hook 'emacs-lisp-mode-hook 'highlight-quoted-mode)
(add-hook 'lisp-mode-hook 'highlight-defined-mode)
(add-hook 'lisp-mode-hook 'highlight-quoted-mode)

;;Theme
(load-theme 'monokai t)

;;change current directory
(setq default-directory "C:/wolverine/")

