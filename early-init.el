;;; early-init.el --- Emacs 27+ pre-initialization file

;; Author: Zoltán Király <zoliky@gmail.com>
;; Created: November 10, 2020

;;; Commentary:

;; Emacs 27+ loads this file before the package system and GUI is initialized
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html

;;; Code:

;; Avoid loading the packages again after processing the init file
(setq package-enable-at-startup nil)

;; Turn off mouse interface early in startup to avoid momentary display
(push '(menu-bar-lines . 0)   default-frame-alist)
(push '(tool-bar-lines . 0)   default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Disable the "package cl is deprecated" warning
(setq byte-compile-warnings '(cl-functions))

;;; early-init.el ends here