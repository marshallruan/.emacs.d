; -*- lexical-binding: t -*-

; make startup faster by reducing the frequency of garbage collection
(setq gc-cons-threshold 50000000)

; use the org file to manage emacs config
(use-package org
  :ensure t
  :config
  (setq org-src-preserve-indentation t))

(org-babel-load-file (expand-file-name "config.org" user-emacs-directory))


; avoid auto custom system modify init.el
(setq custom-file (expand-file-name "emacs-custom.el" user-emacs-directory))
(load custom-file)

; make gc pause faster by decreasing the threshold
(setq gc-cons-threshold 2000000)
