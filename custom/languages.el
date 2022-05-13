;;; languages.el --- Provides setup for language integrations

;; Copyright (C) 2022 booklearner

;; Author: booklearner <booklearner@protonmail.com>
;; SPDX-License-Identifier: BSD-3-Clause

;;; Commentary:

;; This file sets up and configures any language or environment specific
;; configuration and installing tools to make Emacs an integrated IDE like
;; experience.

;;; Code:

;; config for ocaml with merlin
(require 'merlin-company)
(require 'opam-user-setup "~/src/dot-emacs-d/custom/opam-user-setup.el")

;; setup for C, run clang-format automatically on save
(add-hook 'c-mode-common-hook #'clang-format+-mode)

(provide 'languages)
;;; languages.el ends here
