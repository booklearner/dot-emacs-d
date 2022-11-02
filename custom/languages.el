;;; languages.el --- Provides setup for language integrations

;; Copyright (C) 2022 booklearner

;; Author: booklearner <booklearner@proton.me>
;; SPDX-License-Identifier: BSD-3-Clause

;;; Commentary:

;; This file sets up and configures any language or environment specific
;; configuration and installing tools to make Emacs an integrated IDE like
;; experience.

;;; Code:

;; config for ocaml with merlin
;; (require 'merlin-company)
;; (with-eval-after-load 'company
;;   (add-to-list 'company-backends 'merlin-company-backend))
;; ; Enable company on merlin managed buffers
;; (add-hook 'merlin-mode-hook 'company-mode)
;; (load "/Users/booklearner/.opam/default/share/emacs/site-lisp/tuareg-site-file")
;; (require 'opam-user-setup "~/src/dot-emacs-d/custom/opam-user-setup.el")

;; setup for C, run clang-format automatically on save
(add-hook 'c-mode-common-hook #'clang-format+-mode)

(provide 'languages)
;;; languages.el ends here
