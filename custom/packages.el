;;; packages.el --- Handles all the packages required

;; Copyright (C) 2022 booklearner

;; Author: booklearner <booklearner@proton.me>
;; SPDX-License-Identifier: BSD-3-Clause

;;; Commentary:

;; This Emacs customization requires a bunch of different packages,
;; this file ensures they're all installed and updated when Emacs
;; boots up for the first time.

;;; Code:

(require 'package)

;; use melpa and elpa to install packages
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

;; initialize the internal record of packages
(package-initialize)

;; update the packages list if it's empty
(unless package-archive-contents (package-refresh-contents))

;; this is the list of packages we're installing
(defvar list-of-packages
  '(ag all-the-icons all-the-icons-ivy-rich cider clang-format+ clojure-mode company
       company-solidity counsel counsel-projectile diff-hl dockerfile-mode doom-modeline doom-themes
       elixir-mode emojify eshell-toggle exec-path-from-shell flx flycheck flycheck-clang-analyzer
       flycheck-elixir flycheck-guile flycheck-inline flycheck-ocaml geiser github-theme go-mode ivy
       ivy-rich lsp-mode magit markdown-mode merlin merlin-company nhexl-mode nix-mode nlinum
       nlinum-relative ocamlformat package-lint projectile python-mode rust-mode solidity-flycheck
       solidity-mode swiper toml-mode tuareg typescript-mode use-package which-key yaml-mode
       elisp-format ligature))  ; append new packages to end of list

(defun ensure-all-packages-are-installed (list)
  "Ensures all packages in LIST are installed."
  (dolist (package list)
    (unless (package-installed-p package)
      (package-install package))))

;; runs every time we restart Emacs (which shouldn't be an issue if running
;; on boot and using emacsclient)
(ensure-all-packages-are-installed list-of-packages)

;; configure shell after installing exec-path-from-shell
;; this can potentially be moved into a separate package
;; that configures eshell, but I don't really have a lot
;; config for eshell right now
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(provide 'packages)
;;; packages.el ends here
