;; packages to install
(setq package-list '(material-theme markdown-mode evil js2-mode web-mode emmet-mode php-mode monokai-theme dashboard olivetti))

;; melpa repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; evil
(require 'evil)
(evil-mode 1)

;; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; load-theme
(load-theme 'material-light t)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; dashboard
(require 'dashboard)

;; olivetti
(require 'olivetti)

(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to BullSharkMacs, an aggressive Emacs blogging platform!")
(setq dashboard-startup-banner "~/.emacs.d/logos/bull-shark-logo.png")
(setq dashboard-center-content t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(dashboard web-mode php-mode monokai-theme material-theme markdown-mode js2-mode evil emmet-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
