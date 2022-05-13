;;; keybindings.el --- Emacs look and feel

;; Copyright (C) 2022 booklearner

;; Author: booklearner <booklearner@protonmail.com>
;; SPDX-License-Identifier: BSD-3-Clause

;;; Commentary:

;; All custom keybindings are defined in this file.

;;; Code:

(require 'projectile)
(require 'ivy)
(require 'company)

;; set mac command and option keys
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;; specific and custom key-bindings are all defined here
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-unset-key (kbd "C-x C-c"))
(global-set-key (kbd "C-x C-c C-x C-c C-x C-c") 'save-buffers-kill-emacs)
(global-unset-key (kbd "C-x C-f"))
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-b") 'counsel-switch-buffer)
(global-set-key (kbd "C--") 'undo)
(global-set-key (kbd "C-=") 'undo-redo)
(global-set-key (kbd "C-s") 'swiper)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key ivy-minibuffer-map (kbd "C-l") 'counsel-up-directory)
(define-key ivy-minibuffer-map (kbd "C-j") 'ivy-alt-done)

;; company keybindings
(global-set-key (kbd "<tab>") #'company-indent-or-complete-common)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-j") 'company-complete-selection)
(define-key company-active-map (kbd "C-p") 'company-select-previous)

;; mapping for eshell-toggle
(global-set-key (kbd "M-S") 'eshell-toggle)

;; replace the the eshell history to use counsel, would prefer to do this with
;; with define-key instead of using a hook, but eshell-hist-mode-hook is not
;; found.
;; TODO: figure out how to do the above
(add-hook 'eshell-hist-mode-hook
	  (lambda ()
	    (substitute-key-definition 'eshell-list-history 'counsel-esh-history eshell-hist-mode-map)))

(provide 'keybindings)
;;; keybindings.el ends here
