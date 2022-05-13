;;; init.el --- Emacs initialization file

;; Copyright (C) 2022 booklearner

;; Author: booklearner <booklearner@protonmail.com>
;; SPDX-License-Identifier: BSD-3-Clause

;;; Commentary:

;; This file will configure and customize Emacs just the way I want it, aiming
;; to be more or less minimal and functional.
;; I got a lot of inspiration from Prelude, which I've used for several years now
;; but decided to kick the and start from scratch.

;;; Code:

;; some top level config for emacs
(setq comp-speed 2)                          ; native compilation optimization level
(setq gc-cons-threshold 50000000)            ; garbage collection frequency, every 50mb
(setq large-file-warning-threshold 1000000)  ; warn when opening big files
(setq default-directory "~/src/")            ; use custom default directory
(setq whitespace-line-column 100)            ; use 100 char lines as the norm

;; store all backup and autosave files in the tmp dir
(setq auto-save-visited-file-name t)
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))
;; cleanup whitespace before saving
(add-hook 'before-save-hook 'whitespace-cleanup)

;; autosave lock files are annoying to deal with, especially with git
(setq create-lockfiles nil)

;; set the path where these configs live
(add-to-list 'load-path "~/src/dot-emacs-d")
(add-to-list 'load-path "~/src/dot-emacs-d/custom")

;; load all the custom packages, ui tweaks, language configurations etc.
(require 'packages)
(require 'keybindings)
(require 'interface)
(require 'languages)

;; tweaks to make tramp faster
(defadvice projectile-project-root (around ignore-remote first activate)
  (unless (file-remote-p default-directory) ad-do-it))

(provide 'init)
;;; init.el ends here
