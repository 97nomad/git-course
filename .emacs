;; Added by Package.el.  This must come before configurations of installed packages.  Don't delete this line.  If you
;; don't want it, just comment it out by adding a semicolon to the start of the line.  You may delete these explanatory
;; comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (tango-dark)))
 '(initial-buffer-choice "c:/devres")
 '(package-selected-packages
   (quote
    (ssh magit))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Отключить алярм белл
(setq visible-bell 1)

;; Отключить создание бэкап-файлов
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files

;; Убрать все кнопки в GUI
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; Нумерация строк
(require 'linum)
(line-number-mode t)
(global-linum-mode t)
(column-number-mode t)
(setq linum-format " %d")

;; Отключение главного экрана
(setq inhibit-startup-message nil)

;; Автодополнение
(require 'company)
(global-company-mode t)

;; Не показывать предупреждение при нажатии A в dired
(put 'dired-find-alternate-file 'disabled nil)

;; Длина строки для M-q
(setq-default fill-column 120)
