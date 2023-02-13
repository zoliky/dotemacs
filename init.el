;;; init.el --- Initialization file -*- lexical-binding: t; -*-

;; Author: Zoltán Király <zoliky@gmail.com>
;; Created: November 10, 2020

;;; Commentary:

;; This file specifies how to initialize Emacs
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html

;;; Code:

;; Check to see if the minimum version requirement of Emacs is met
(let ((minver "28.2"))
  (when (version< emacs-version minver)
    (error "This configuration requires Emacs %s or higher." minver)))

;; Load the Emacs Lisp code blocks embedded in the literate Org file
(org-babel-load-file (expand-file-name "~/.emacs.d/custom-init.org"))

;;; init.el ends here