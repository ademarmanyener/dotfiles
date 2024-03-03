(require 'package)

;; add melpa packages
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))

(package-initialize)

;; evil mode
(add-to-list 'load-path "~/.emacs_packages/evil")
(require 'evil)
(evil-mode 1)
(evil-set-undo-system 'undo-redo)

;; download markdown mode
(unless (package-installed-p 'markdown-mode)
  (package-install 'markdown-mode))

;; electric pair mode
(electric-pair-mode 1)

;; html mode
(setq sgml-quick-keys 'close)

;; change the frame size to 144x44
(when window-system (set-frame-size (selected-frame) 144 44))

;; change the background colour
;; old greenish colour: `#F0FFF0`
(add-to-list 'default-frame-alist '(background-color . "#FDF6E3"))

;; remember the last place visited in a file
(save-place-mode 1)

;; disable ui dialogs
(setq use-dialog-box nil)

(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(delete-selection-mode 1)

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default display-line-numbers-type 'relative)
(show-paren-mode 1)

(setq-default inhibit-startup-screen t)

(setq-default indent-tabs-mode nil)

(setq-default tab-width 2
      indent-tabs-mode nil)

(global-font-lock-mode 1)

(setq-default font-lock-maximum-decoration t)

;; Save all tempfiles in $TMPDIR/emacs$UID/
(defconst emacs-tmp-dir (expand-file-name (format "emacs%d" (user-uid)) temporary-file-directory))
(setq backup-directory-alist
    `((".*" . ,emacs-tmp-dir)))
(setq auto-save-file-name-transforms
    `((".*" ,emacs-tmp-dir t)))
(setq auto-save-list-file-prefix
    emacs-tmp-dir)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "<C-up>") 'shrink-window)
(global-set-key (kbd "<C-down>") 'enlarge-window)
(global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
(global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)
