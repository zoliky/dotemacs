;;; early-init.el --- Early initialization file -*- lexical-binding: t; -*-

;; Author: Zoltán Király <zoliky@gmail.com>
;; Created: November 10, 2020

;;; Commentary:

;; This file is loaded before the package system and GUI is initialized
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Early-Init-File.html

;;; Code:

;; Maximize the Emacs frame on startup
(push '(fullscreen . maximized) default-frame-alist)

;; Avoid loading the packages again after processing the init file
(setq package-enable-at-startup nil)

;; Turn off mouse interface early in startup to avoid momentary display
(push '(menu-bar-lines . 0)   default-frame-alist)
(push '(tool-bar-lines . 0)   default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

;; Suppress the "package cl is deprecated" warning
(setq byte-compile-warnings '(cl-functions))

;; Suppress warnings and errors during asynchronous native compilation
(setq native-comp-async-report-warnings-errors nil)

;;; early-init.el ends here