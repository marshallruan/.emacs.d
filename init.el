; -*- lexical-binding: t -*-

;; use the org file to manage emacs config
(use-package org
  :ensure t
  :config
  (setq org-src-preserve-indentation t))

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))
