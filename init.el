;;; init.el --- Initialization file -*- lexical-binding: t; -*-

;; Author: Zoltán Király <zoliky@gmail.com>
;; Created: November 10, 2020

;;; Commentary:

;; This file specifies how to initialize Emacs
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html

;;; Code:

;; Changing the default Garbage Collector settings is not recommended
;; https://lists.gnu.org/archive/html/help-gnu-emacs/2007-06/msg00243.html

;; Load the Emacs Lisp code blocks embedded in the literate Org file
(org-babel-load-file (expand-file-name "~/.emacs.d/custom-init.org"))

;;; init.el ends here